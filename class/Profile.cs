using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Port_folio
{
    public class Profile
    {
        public string Email { get; set; }
        public string Occupation { get; set; }
        public string Sex { get; set; }
        public Profile( string email, string occupation, string sex)
        {
          
            Email = email;
            Occupation = occupation;
            Sex = sex;
        }
        public string GetProfileInfo()
        {
            return
                "Email: " + Email + "<br>" +
                "Occupation: " + Occupation + "<br>" +
                "Sex: " + Sex + "<br>";
        }
    }
}