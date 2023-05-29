using Microsoft.EntityFrameworkCore;
using SelfWork.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SelfWork.Database
{
    public class StudentsContext : DbContext
    {
        public DbSet<Group> Groups { get; set; }
        public DbSet<Student> Students { get; set; }
        protected override void OnConfiguring (DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("Server=PAWOK;Database=SelfWorkDB;Trusted_Connection=True;Integrated Security=True;TrustServerCertificate=True");
        }
    }
}
