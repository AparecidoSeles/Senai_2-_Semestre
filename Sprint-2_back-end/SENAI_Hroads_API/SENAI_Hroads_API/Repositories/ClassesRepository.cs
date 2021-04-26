using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using SENAI_Hroads_API.Contexts;
using SENAI_Hroads_API.Domains;
using SENAI_Hroads_API.Interfaces;

namespace SENAI_Hroads_API.Repositories
{
    /// <summary>
    /// Reponsável pelos repositórios das Classes
    /// </summary>
    public class ClassesRepository : IClassesRepository
    {
        /// <summary>
        /// Objeto de contexto por onde serão chamados os métodos do EF Core
        /// </summary>
        HroadsContext ctx = new HroadsContext();

        public void Atualizar(int id, Classes ClasseAtualizada)
        {
            throw new NotImplementedException();
        }

        public Classes BuscarId(int id)
        {
            throw new NotImplementedException();
        }

        public void Cadastrar(Classes NovaClasse)
        {
            throw new NotImplementedException();
        }

        public void Deletar(int id)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Lista todas as classes
        /// </summary>
        /// <returns>Lista de classes</returns>
        public List<Classes> Listar()
        { 
            //Retorna uma lista com todas as classes
            return ctx.Classes.ToList();
        }

        public List<Classes> ListarClasses()
        {
            throw new NotImplementedException();
        }
    }
}
