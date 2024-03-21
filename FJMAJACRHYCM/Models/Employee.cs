using System;
using System.Collections.Generic;

namespace FJMAJACRHYCM.Models
{
    public partial class Employee
    {
        public Employee()
        {
            Addresses = new HashSet<Address>();
        }

        public int Id { get; set; }
        public string FirstName { get; set; } = null!;
        public string LastName { get; set; } = null!;
        public string? Email { get; set; }
        public string Phone { get; set; } = null!;

        public virtual ICollection<Address> Addresses { get; set; }
    }
}
