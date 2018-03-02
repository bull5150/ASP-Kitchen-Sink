using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ASP_Kitchen_Sink.Models
{
    public class FormData
    {
        public DateTime ToDate { get; set; }
        public DateTime FromDate { get; set; }
        public int DropDownValue { get; set; }
        public int DayDifference { get; set; }
        public string RadioText { get; set; }
        public string CommentBox { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public int basicdropdown { get; set; }
        public string basicdropdowntext { get; set; }
        public string dropdowntext { get; set; }
    }
}