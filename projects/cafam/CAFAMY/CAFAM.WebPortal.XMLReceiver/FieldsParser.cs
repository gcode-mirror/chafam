using System;
using System.Collections.Generic;
using System.Text;
using System.Xml;

namespace CAFAM.WebPortal.XMLReceiver
{
    public class FieldsParser
    {
        private Fields _master;
        private IList<Fields> _details = new List<Fields>();
        public XmlDocument xmlData { get; set; }

        public Fields Master
        {
            get
            {
                return _master;
            }
        }

        public IList<Fields> Details
        {
            get
            {
                return _details;
            }
        }

        public FieldsParser(string xml)
        {
            xmlData = new XmlDocument();
            xmlData.LoadXml(xml);
        }

        public string GetFormName()
        {
            XmlNodeList xmlList = null;
            xmlList = xmlData.GetElementsByTagName("my:FormName");
            XmlNode xmlNodeFormName = xmlList.Item(0);
            return xmlNodeFormName.InnerText;
        }

        public void ExplodeXML(string masterNodeName, List<string> detailNodeNames)
        {
            //_form = form;
            bool isDetail = false;

            XmlNode masterNode = null;
            masterNode = xmlData.GetElementsByTagName(masterNodeName).Item(0);

            _master = new Fields(masterNodeName);

            foreach (XmlNode masterChildNode in masterNode.ChildNodes)
            {
                foreach (string detailNodeName in detailNodeNames)
                {
                    XmlNode xmlDetailParentNode = null;
                    if (SearchDetail(masterChildNode, detailNodeName, out xmlDetailParentNode))
                    {
                        foreach (XmlNode xmlDetailNode in xmlDetailParentNode.ChildNodes)
                        {
                            if (xmlDetailNode.Name == detailNodeName)
                            {
                                Fields newDetail = new Fields(detailNodeName);
                                foreach (XmlNode detailFieldNode in xmlDetailNode.ChildNodes)
                                {
                                    ProcessNode(detailFieldNode, newDetail);
                                }
                                Details.Add(newDetail);
                            }
                            else
                            {
                                ProcessNode(xmlDetailNode, _master);
                            }
                        }
                        isDetail = true;
                    }
                }
                if (!isDetail)
                {
                    ProcessNode(masterChildNode, _master);
                }
                isDetail = false;
            }  
        }

        private bool SearchDetail(XmlNode xmlNode, string detailName, out XmlNode xmlDetailNode)
        {
            if (xmlNode.Name == detailName)
            {
                xmlDetailNode = xmlNode.ParentNode;
                return true;
            }
            else
            {
                if (!xmlNode.HasChildNodes || xmlNode.NodeType == XmlNodeType.Text)
                {
                    xmlDetailNode = null;
                    return false;
                }
                else
                {
                    foreach (XmlNode childNode in xmlNode.ChildNodes)
                    {
                        if(SearchDetail(childNode, detailName, out xmlDetailNode))
                        {
                            return true;
                        }
                    }
                    xmlDetailNode = null;
                    return false;
                }
            }
        }

        private void ProcessNode(XmlNode xmlNode, Fields fields)
        {
            if (xmlNode.NodeType != XmlNodeType.Text)
            {
                foreach (XmlNode xmlNestedNode in xmlNode.ChildNodes)
                {
                    ProcessNode(xmlNestedNode, fields);
                }
            }
            else
            {
                fields.Add(xmlNode.ParentNode.Name, xmlNode.InnerText);
            }
        }

        public class Fields
        {
            private Dictionary<string, string> _fields = new Dictionary<string, string>();

            public string NodeName { get; set; }

            public Fields(string nodeName)
            {
                NodeName = nodeName;
            }

            public void Add(string name, string value)
            {
                if(!_fields.ContainsKey(name))
                {
                    _fields.Add(name, value);
                }
            }

            public string this[string name]
            {
                get
                {
                    if (_fields.ContainsKey(name))
                    {
                        return _fields[name];
                    }
                    else
                    {
                        return null;
                    }
                }
            }
        }
    }
}
