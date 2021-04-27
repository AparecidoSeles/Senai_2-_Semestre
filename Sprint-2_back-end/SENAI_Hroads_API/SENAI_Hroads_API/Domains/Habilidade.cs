using System;
using System.Collections.Generic;
using Senai.HRoads.WebApi.Domains;

#nullable disable

namespace SENAI_Hroads_API.Domains
{
    public partial class Habilidade
    {
        public int IdHab { get; set; }
        public int? IdTipo { get; set; }
        public string Nome { get; set; }

        public virtual TipoHabilidade IdTipoNavigation { get; set; }
    }
}
