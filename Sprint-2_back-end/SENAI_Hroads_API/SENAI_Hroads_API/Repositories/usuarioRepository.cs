using Senai.HRoads.WebApi.Domains;
using Senai.HRoads.WebApi.Interfaces;
using SENAI_Hroads_API.Contexts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.HRoads.WebApi.Repositories
{
    public class usuarioRepository : IUsuarioRepository
    {
        HroadsContext ctx = new HroadsContext();
        public void Cadastrar(Usuario novoUsuario)
        {
            //Adiciona um novo usuario
            ctx.Usuarios.Add(novoUsuario);

            //Salva as informações no banco de dados
            ctx.SaveChanges();
        }

        public List<Usuario> Listar()
        {
            return ctx.Usuarios.ToList();
        }
    }
}
