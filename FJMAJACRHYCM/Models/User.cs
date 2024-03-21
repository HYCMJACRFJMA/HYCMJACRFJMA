using System;
using System.Collections.Generic;

namespace FJMAJACRHYCM.Models
{
    public partial class User
    {
        public int Id { get; set; }
        public string UserName { get; set; } = null!;
        public string Password { get; set; } = null!;
        public string Email { get; set; } = null!;
        public byte Status { get; set; }
        public byte[]? Image { get; set; }
        public bool? Restablecer { get; set; }
        public bool? Confirmado { get; set; }
        public int RoleId { get; set; }

        public virtual Role Role { get; set; } = null!;
    }
}
