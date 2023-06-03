# `Projeto`
LabEcommerce
![Navigate](./src/img/banco-dados.png)
# `Descrição`
[Projeto desenvolvido na semana 18 do curso Labenu]. </br>
O Projeto LabEcommerce-backend foi desenvolvido como uma atividade dentro do curso Full-Stack Web Developer da Labenu, o qual consiste na elaboração de uma API que retorna dados conforme as requisições enviadas. Trata-se de uma ferramenta de cadastro de usuários, produtos e registro de compras. As requisições implementadas são:


- **getAllUsers:** retorna todos os usuários cadastrados.
- **createUser:** cadastrar novo usuário, fornecendo (via body) nome, email e password.

- **getAllProducts:** retorna todos os produtos.
- **getProductByName:** retorna o produto buscado (através do query).
- **getProductById:** retorna o produto com determinado id buscado (através do query).
- **createProduct:** cadastrar novo produto, fornecendo (via body) nome, preço e url da imagem do produto.
- **editProductById:** edita informações do produto, fornecendo id (via path params) e informações a serem alteradas (via body).
- **getPurchases:** retorna todas as compras efetuadas.
- **getPurchaseById:** retorna todas as compras efetuadas por um usuário, fornecendo (via path params) o id do usuário.
- **purchasesRegister:** cadastrar uma nova compra, fornecendo (via body) id, id do usuário, id do produto, quantidade e se foi paga.


A documentação da API pode ser acessada [aqui](https://documenter.getpostman.com/view/24823058/2s93Y5QfU5#47144d80-bef7-4461-b8cd-2ded011c1eb9).

# `Instalando e rodando o projeto via clone`
Fazer o clone do projeto:
- git clone link-do-repositório

Instalar as dependências:
- npm install

Rodar o projeto:
- npm run start

# `Instalando e rodando o projeto via deploy`
Fazer as requisições para os endpoint mostrados na documentação, utilizando, por exemplo:
- Postman
- Insomnia
- Extensão Rest do VSCODE

# `Tecnologias utilizadas`
<div>
<img src="https://img.shields.io/badge/Visual_Studio_Code-0078D4?style=for-the-badge&logo=visual%20studio%20code&logoColor=white">
<img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black">
<img src="https://img.shields.io/badge/TypeScript-007ACC?style=for-the-badge&logo=typescript&logoColor=white">
<img src="https://img.shields.io/badge/Node.js-43853D?style=for-the-badge&logo=node.js&logoColor=white">
<img src="https://img.shields.io/badge/MySQL-00000F?style=for-the-badge&logo=mysql&logoColor=white">
<img src="https://img.shields.io/badge/Express.js-404D59?style=for-the-badge">
<img src="https://img.shields.io/badge/GIT-E44C30?style=for-the-badge&logo=git&logoColor=white">
<img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white">
<img src="https://img.shields.io/badge/Markdown-000000?style=for-the-badge&logo=markdown&logoColor=white">
</div>

# `Autor`
Myllena Vieira Silva </br>
<a href="https://www.linkedin.com/in/devmyllenavieira/"><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white"></a> <a href="https://github.com/myllenavieira"><img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white"></a>