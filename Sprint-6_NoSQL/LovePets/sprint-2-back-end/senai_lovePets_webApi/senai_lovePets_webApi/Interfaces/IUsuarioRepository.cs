using senai_lovePets_webApi.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai_lovePets_webApi.Interfaces
{
    interface IUsuarioRepository
    {
        /// <summary>
        /// Busca um usuário existente através do seu e-mail e sua senha
        /// </summary>
        /// <param name="email">O valor do e-mail digitado pelo usuário</param>
        /// <param name="senha">O valor da senha digitada pelo usuário</param>
        /// <returns>Um usuário encontrado</returns>
        Usuario BuscarPorEmailSenha(string email, string senha);

        /// <summary>
        /// Busca um Usuário através do seu ID
        /// </summary>
        /// <param name="IdUsuario">ID do Usuário que será buscado</param>
        /// <returns>Um Usuário encontrado</returns>
        Usuario BuscarPorId(int IdUsuario);

        /// <summary>
        /// Cadastra um novo Usuário
        /// </summary>
        /// <param name="NovoUsuario">Objeto com as novas Informações</param>
        void Cadastrar(Usuario NovoUsuario);


        /// <summary>
        /// lista todos os Usuários
        /// </summary>
        /// <returns>Uma Lista de Usuários</returns>
        List<Usuario> ListarTodos();

        /// <summary>
        /// Atualiza um Usuário existente
        /// </summary>
        /// <param name="IdUsuario">Id do Usuário que será Atualizado</param>
        /// <param name="UsuarioAtualizado">Objeto com as novas informações</param>
        void Atualizar(int IdUsuario, Usuario UsuarioAtualizado);

        /// <summary>
        /// Deleta um Usuário existente
        /// </summary>
        /// <param name="IdUsuario">Id do Usuário que será deletado</param>
        void Deletar(int IdUsuario);
    }
}
