using CarsMVCManager.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CarsMVCManager.Helpers
{
    public class MesHelpers
    {public static string UpperContact(ContactInfo ci)
        {
            return ci.Adress.ToUpper() + "" + ci.Email.ToUpper() + " " + ci.Tel;
        }

    }
}