using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SelfWork.Models
{
    public class Student
    {
        public int Id { get; set; }
        public string Fullname { get; set; }
        public DateTime Birthday { get; set; }
        public string Address { get; set; }
        public string Phone { get; set; }
        public int RecordBookNumber { get; set; }
        public string Photo { get; set; }
        public int GroupId { get; set; }
        public Group Group { get; set; }
    }
}
