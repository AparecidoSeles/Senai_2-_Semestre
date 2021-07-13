using System;
using System.Collections.Generic;

#nullable disable

namespace senai_CZBooks_api.Domains
{
    public partial class Livro
    {
        public Livro()
        {
            CategoriaLivros = new HashSet<CategoriaLivro>();
        }

        public int IdLivro { get; set; }
        public int? IdAutor { get; set; }
        public int? IdInstituicao { get; set; }
        public string Titulo { get; set; }
        public string Sinopse { get; set; }
        public DateTime DataPublicacao { get; set; }
        public decimal? Preco { get; set; }

        public virtual Autor IdAutorNavigation { get; set; }
        public virtual Instituicao IdInstituicaoNavigation { get; set; }
        public virtual ICollection<CategoriaLivro> CategoriaLivros { get; set; }
    }
}
