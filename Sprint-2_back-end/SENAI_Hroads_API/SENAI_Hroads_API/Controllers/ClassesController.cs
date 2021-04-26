using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SENAI_Hroads_API.Interfaces;
using SENAI_Hroads_API.Repositories;

namespace SENAI_Hroads_API.Controllers
{
    //define que o tipo de reposta da API será no formato JSON
    [Produces ("application/json")]
    //define que a rota de uma requisição será no formato domínio/api/NomeController
    //ex: http://localhost:5000/api/calsses
    [Route("api/[controller]")]
    //Define que é um controlador de API
    [ApiController]
    public class ClassesController : ControllerBase
    {
        /// <summary>
        /// Obejto _classesRepository irá receber todos os métodos definidos na interface IClassesRepository
        /// </summary>
        private IClassesRepository _classeRepository { get; set; }


        /// <summary>
        /// instancia o objeto _classesRepository para que haja uma referência nos métodos implememtados no repositório ClassesRepository
        /// </summary>
        public ClassesController()
        {
            _classeRepository = new ClassesRepository();
        }

        /// <summary>
        /// Lista todas as classes
        /// </summary>
        /// <returns>Uma lista de Classes  e um status code 200 - ok </returns>
        [HttpGet]
        public IActionResult Get()
        {
            //retorna a resposta da  requisição fazendo uma chamada para o método
            return Ok(_classeRepository.Listar());
        }
    }
}
