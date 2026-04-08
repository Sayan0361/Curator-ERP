using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Net.Mail;
using System.Threading.Tasks;
using EmailService.Models;
using System.Web.Services.Description;

namespace EmailService.Controllers
{
    public class EmailController : Controller
    {
        // GET: Email
        public ActionResult Index()
        {
            return View();
        }

        public async Task<object> SendEmail(EmailModel emailModel)
        {
            try
            {
                var message = new MailMessage();

                message.To.Add(new MailAddress(
                    emailModel.NameTo + " <" + emailModel.EmailTo + " >"));
                message.From = new MailAddress(
                    emailModel.NameFrom + " <" + emailModel.EmailFrom + " >");

                message.Subject = emailModel.EmailSubject;

                message.Body = emailModel.EmailBody;
                message.IsBodyHtml = false;

                using (var smtp = new SmtpClient())
                {
                    await smtp.SendMailAsync(message);
                }

                return new
                {
                    success = true,
                    message = "Mail sent successfully"
                };
            }
            catch(Exception ex)
            {
                return new
                {
                    success = false,
                    message = "Mail sent failed",
                    error = ex.ToString()
                };
            }
        }
    }
}