using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace EmailService.Models
{
    public class EmailModel
    {
        [DisplayName("To")]
        public string NameTo { get; set; }

        [Required]
        [DisplayName("To Email")]
        [EmailAddress]
        public string EmailTo { get; set; }
        [Required]
        [DisplayName("Subject")]
        public string EmailSubject { get; set; }
        [Required]
        [DisplayName("Body")]
        public string EmailBody { get; set; }

        public string OTP {  get; set; }
        [EmailAddress]
        [DisplayName("Your Email")]
        public string EmailFrom { get; set; }
        public string NameFrom { get; set; }
    }
}