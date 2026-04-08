using EmailService.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
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

        [HttpPost]
        public async Task<object> SendEmail(EmailModel emailModel)
        {
            try
            {
                var message = new MailMessage();

                message.To.Add(new MailAddress(
                    emailModel.NameTo + " <" + emailModel.EmailTo + ">"));

                message.From = new MailAddress(
                    emailModel.NameFrom + " <" + emailModel.EmailFrom + ">");

                message.Subject = emailModel.EmailSubject;
                message.Body = emailModel.EmailBody;
                message.IsBodyHtml = false;

                using (var smtp = new SmtpClient())
                {
                    smtp.Send(message);
                }

                return new
                {
                    success = true,
                    message = "Mail sent successfully",
                    error = ""
                };
            }
            catch (Exception ex)
            {
                return new
                {
                    success = false,
                    message = "Mail sent failed",
                    error = ex.Message
                };
            }
        }

        public async Task<ActionResult> Test()
        {
            EmailModel model = new EmailModel
            {
                EmailFrom = "subhradeepbasu2305@gmail.com",
                EmailTo = "subhradeepbasu2002@gmail.com",
                OTP = 123456,
                EmailBody = "Here is your OTP: 123456",
                EmailSubject = "Don't Reply. Just a Test mail.",
                NameFrom = "Curio",
                NameTo = "Client"
            };

            dynamic response = await SendEmail(model);

            return Content($"Success: {response.success} <br/> " +
                           $"Message: {response.message} <br/> " +
                           $"Error: {response.error}");
        }
    }
}
