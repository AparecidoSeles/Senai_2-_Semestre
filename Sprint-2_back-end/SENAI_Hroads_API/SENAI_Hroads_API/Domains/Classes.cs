using System;
using System.Collections.Generic;

#nullable disable

namespace SENAI_Hroads_API.Domains
{
    public partial class Classes
    {
        public Classes()
        {
            Personagens = new HashSet<Personagen>();
        }

        public int IdClasse { get; set; }
        public string Nome { get; set; }

        public virtual ICollection<Personagen> Personagens { get; set; }
    }
}
