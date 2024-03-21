using System;
using System.Collections.Generic;

namespace FJMAJACRHYCM.Models
{
    public partial class Address
    {
        public int Id { get; set; }
        public int EmployeeId { get; set; }
        public string Street { get; set; } = null!;
        public string City { get; set; } = null!;
        public string State { get; set; } = null!;
        public string Country { get; set; } = null!;
        public string? PostalCode { get; set; }

        public virtual Employee Employee { get; set; } = null!;
    }
}
