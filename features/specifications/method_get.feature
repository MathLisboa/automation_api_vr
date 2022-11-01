#language: pt

Funcionalidade: Realizar consulta no endpoint de estabelecimentos.
Eu como cliente desejo realizar uma consulta na listagem de estabelecimentos
Para validar os que estão disponíveis.

@teste_get
Cenario: Realizar um GET no endpoint para validar a listagem de estabelecimentos
Dado que o usuario tenha o endereco da consulta
Quando realizar a requisicao de consulta
Entao retornará os dados listados, respondendo com o codigo 200
