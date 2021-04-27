using Senai.HRoads.WebApi.Domains;
using Senai.HRoads.WebApi.Interfaces;
using SENAI_Hroads_API.Contexts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.HRoads.WebApi.Repositories
{
    public class tipoUsuarioRepository : ITipoUsuarioRepository
    {
        HroadsContext ctx = new HroadsContext();
        public void Cadastrar(TipoUsuario novoTipoUsuario)
        {
            //Adiciona um novo usuario
            ctx.TipoUsuarios.Add(novoTipoUsuario);

            //Salva as informações no banco de dados
            ctx.SaveChanges();
        }

        public List<TipoUsuario> Listar()
        {
            return ctx.TipoUsuarios.ToList();
        }
    }
}
