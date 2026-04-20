using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Auth.DTOs
{
    public class UserRegistrationDto
    {
        public string AdminUserName { get; set; }
        public long CustomerID { get; set; }

        public long? UserID { get; set; } // Nullable for new registrations
        public string UserName { get; set; }
        [StringLength(15, MinimumLength = 6,
        ErrorMessage = "Password must be between 6 and 15 characters.")]
        public string Password { get; set; }
       
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public long? NewUserID { get; set; }
        [EmailAddress]
        [Required]
        public string Email {  get; set; }

    }
}