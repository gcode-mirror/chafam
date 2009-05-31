using System;
using System.Collections.Generic;
using System.Text;
using System.Xml;
using System.Data.SqlClient;
using System.Data;

namespace CAFAM.WebPortal.XMLReceiver
{
    public class SqlWriter
    {
        private List<FieldsGroupConnection> DetailConnections = new List<FieldsGroupConnection>();
        private FieldsGroupConnection MasterConnection;
        public SqlConnection SqlConn { get; set; }
        public List<string> DetailNodeNames { get; set; }
        public string MasterNodeName { get; set; }

        public void ParseXmlConfigData(string configurationFile, string formName)
        {
            XmlDocument xmlDocument = new XmlDocument();
            xmlDocument.Load(configurationFile);
            foreach (XmlNode xmlNodeForm in xmlDocument.GetElementsByTagName("Form"))
            {
                if (xmlNodeForm.Attributes["name"].Value == formName)
                {
                    DetailNodeNames = new List<string>();
                    foreach (XmlNode xmlNodeSP in xmlNodeForm)
                    {
                        if (xmlNodeSP.Attributes["detail"] != null &&
                            xmlNodeSP.Attributes["detail"].Value == "true")
                        {
                            DetailConnections.Add(new FieldsGroupConnection(xmlNodeSP));
                            DetailNodeNames.Add(xmlNodeSP.Attributes["parentfield"].Value);
                        }
                        else
                        {
                            MasterConnection = new FieldsGroupConnection(xmlNodeSP);
                            MasterNodeName = xmlNodeSP.Attributes["parentfield"].Value;
                        }
                    }
                    break;
                }
            }
        }

        public void Write(FieldsParser information, string formName)
        {
            Variables variables = new Variables();
            SqlTransaction sqlTransaction = SqlConn.BeginTransaction();
            try
            {
                MasterConnection.SP.Execute(SqlConn, sqlTransaction, information.Master, variables);
                foreach (FieldsGroupConnection detailConnection in DetailConnections)
                {
                    foreach (FieldsParser.Fields fields in information.Details)
                    {
                        if (fields.NodeName == detailConnection.Name)
                        {
                            detailConnection.SP.Execute(SqlConn, sqlTransaction, fields, variables);
                        }
                    }
                }
                sqlTransaction.Commit();
            }
            catch
            {
                sqlTransaction.Rollback();
                throw;
            }
        }

        private class FieldsGroupConnection
        {
            public string Name { get; set; }
            public StoredProcedure SP { get; set; }

            public FieldsGroupConnection(XmlNode xmlNode)
            {
                Name = xmlNode.Attributes["parentfield"].Value;
                SP = new StoredProcedure(xmlNode);
            }
        }

        private class StoredProcedure
        {
            SqlCommand _sqlCommand = new SqlCommand();

            IList<Parameter> _parameters = new List<Parameter>();
            private IList<Parameter> Parameters
            {
                get
                {
                    return _parameters;
                }
            }

            public StoredProcedure(XmlNode xmlNode)
            {
                XmlAttributeCollection attributes = xmlNode.Attributes;
                _sqlCommand.CommandType = CommandType.StoredProcedure;
                _sqlCommand.CommandText = attributes["name"].Value;
                SqlParameterCollection sqlParameters = _sqlCommand.Parameters;
                foreach (XmlNode xmlParameterNode in xmlNode.ChildNodes)
                {
                    Parameter parameter = new Parameter(xmlParameterNode);
                    _parameters.Add(parameter);
                    SqlParameter sqlParameter = new SqlParameter();
                    sqlParameter.ParameterName = "@" + parameter.Name;
                    switch (parameter.Type.ToUpper())
                    {
                        case "INT":
                            sqlParameter.SqlDbType = SqlDbType.Int;
                            break;
                        case "VARCHAR":
                            sqlParameter.SqlDbType = SqlDbType.VarChar;
                            break;
                        case "BIT":
                            sqlParameter.SqlDbType = SqlDbType.Bit;
                            break;
                        case "DATETIME":
                            sqlParameter.SqlDbType = SqlDbType.DateTime;
                            break;
                    //TODO: Implementar otros tipos de datos SQL
                    }
                    switch (parameter.Direction.ToUpper())
                    {
                        case "INPUT":
                            sqlParameter.Direction = ParameterDirection.Input;
                            break;
                        case "INPUTOUTPUT":
                            sqlParameter.Direction = ParameterDirection.InputOutput;
                            break;
                        case "OUTPUT":
                            sqlParameter.Direction = ParameterDirection.Output;
                            break;
                    }
                    sqlParameters.Add(sqlParameter);
                }
            }
            
            public void Execute(SqlConnection sqlConnection, SqlTransaction sqlTransaction, FieldsParser.Fields fields, Variables variables)
            {
                foreach (Parameter parameter in Parameters)
                {
                    switch (parameter.Direction.ToUpper())
                    {
                        case "INPUT":
                        case "INPUTOUTPUT":
                            string value = "";
                            if (parameter.Value.Length > 0)
                            {
                                value = parameter.Value;
                            }
                            else
                            {
                                if (parameter.Field.Length > 0)
                                {
                                    value = fields[parameter.Field];
                                }
                                else
                                {
                                    value = variables[parameter.Variable];
                                }
                            }
                            if (value != null)
                            {
                                _sqlCommand.Parameters["@" + parameter.Name].Value = value;
                            }
                            break;
                    }
                }
                _sqlCommand.Connection = sqlConnection;
                _sqlCommand.Transaction = sqlTransaction;
                _sqlCommand.ExecuteNonQuery();
                foreach (Parameter parameter in Parameters)
                {
                    switch (parameter.Direction.ToUpper())
                    {
                        case "INPUTOUTUT":
                        case "OUTPUT":
                            variables[parameter.Variable] = _sqlCommand.Parameters["@" + parameter.Name].Value.ToString();
                            break;
                    }
                }
            }
        }

        private class Parameter
        {
            string _name;
            string _type;
            string _direction;
            string _value = "";
            string _field = "";
            string _variable = "";

            public string Name
            {
                get
                {
                    return _name;
                }
            }

            public string Type
            {
                get
                {
                    return _type;
                }
            }

            public string Direction
            {
                get
                {
                    return _direction;
                }
            }

            public string Value
            {
                get
                {
                    return _value;
                }
            }

            public string Field
            {
                get
                {
                    return _field;
                }
            }

            public string Variable
            {
                get
                {
                    return _variable;
                }
            }

            public Parameter(XmlNode xmlNode)
            {
                XmlAttributeCollection attributes = xmlNode.Attributes;
                _name = attributes["name"].Value;
                _type = attributes["type"].Value;
                _direction = attributes["direction"].Value;
                if (attributes.GetNamedItem("value") != null)
                {
                    _value = attributes["value"].Value;
                }
                if (attributes.GetNamedItem("field") != null)
                {
                    _field = attributes["field"].Value;
                }
                if (attributes.GetNamedItem("variable") != null)
                {
                    _variable = attributes["variable"].Value;
                }
            }
        }

        private class Variables
        {
            private Dictionary<string, string> _variables = new Dictionary<string, string>();

            public string this[string name]
            {
                get
                {
                    if (_variables.ContainsKey(name))
                    {
                        return _variables[name];
                    }
                    else
                    {
                        return null;
                    }
                }
                set
                {
                    if (_variables.ContainsKey(name))
                    {
                        _variables.Remove(name);
                    }
                    _variables.Add(name, value);
                }
            }
        }
    }
}
