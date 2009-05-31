using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Mail;
using System.Net;
using Microsoft.SharePoint.Utilities;
using Microsoft.SharePoint;

namespace CAFAM.WebPortal.Commons
{
    public class EmailHelper
    {
        public SPWeb Web { get; set; }

        public EmailHelper(SPWeb web)
        {
            Web = web;
        }

        public void SendContactMailNewMemberUser(string to, string from, string message, string name)
        {
            StringBuilder strBuilder = new StringBuilder();

            strBuilder.AppendLine(string.Format("El mensaje fue enviado por {0}, cuando intentaba dar de alta su usuario:", name));
            strBuilder.Append(message);
            string subject = "Mensaje por validación inválida para dar de alta un Usuario Afiliado";

            SendEmail(CreateEmail(to, from, subject, strBuilder.ToString()));
        }

        public void SendMailNewCompanyUserData(string from, Entities.User user)
        {
            StringBuilder strBuilder = new StringBuilder();

            strBuilder.AppendLine(string.Format("Estimado {0} {1}, número de cédula {2}", user.FirstName, user.FirstSurname, user.IdentificationNumber));
            strBuilder.AppendLine(string.Format("Empresa: {0} {1} y {2}", user.NIT, user.SubNIT, user.Company));
            strBuilder.AppendLine("Este correo responde a su solicitud alta de usuario en el sistema. Para ingresar al sitio deberá hacerlo con los siguientes datos.");
            strBuilder.AppendLine(string.Format("Nombre de usuario: {0}", user.UserName));
            strBuilder.AppendLine(string.Format("Contraseña: {0}", user.Password));
            strBuilder.AppendLine("Recomendamos que modifique su contraseña al ingresar al sitio.");
            strBuilder.Append("El uso de este  usuario y la contraseña es personal e intransferible,  Le recordamos que la información de nuestros afiliados es confidencial y goza del privilegio del derecho a la intimidad consagrada en el Artículo 15 de la Constitución Política de Colombia de 1991; por lo tanto su uso es confidencial.");

            string subject = string.Format("Creación de usuarios Empresa {0}, {1}  y {2}", user.NIT, user.SubNIT, user.Company);

            SendEmail(CreateEmail(user.CompanyEmail, from, subject, strBuilder.ToString()));
        }

        public MailMessage CreateEmail(string to, string from, string subject, string body)
        {
            try
            {
                MailMessage mail = new MailMessage(from, to);

                mail.Subject = subject;
                mail.Body = body;

                return mail;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void SendEmail(MailMessage mail)
        {
            try
            {
                SPSecurity.RunWithElevatedPrivileges(delegate()
                {
                    using (SPSite sc = new SPSite(Web.Site.ID))
                    {
                        foreach(MailAddress to in mail.To)
                        {
                            SPUtility.SendEmail(sc.OpenWeb(Web.ID), false, false, to.Address, mail.Subject, mail.Body);
                        }
                    }
                });
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
