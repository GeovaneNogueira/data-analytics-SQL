SELECT * from categorias; --Consultas simples

SELECT COUNT(*) as qtd_categorias FROM categorias; --Fazendo uma consulta para saber a contagem de registros nessas colunas

SELECT count(*) as qtd_fornecedores FROM fornecedores;

SELECT count(*) as qtd_itensvenda FROM itens_venda;

SELECT count(*) as qtd_marcas FROM marcas;

SELECT count(*) AS qtd_produtos FROM produtos;

SELECT COUNT(*) AS qtd_vendas FROM vendas;

SELECT COUNT(*) as qtd_clientes from clientes;


select * FROM vendas LIMIT 5; --Limitando as vendas na consulta

SELECT DISTINCT(
  strftime('%Y',data_venda)) --Fazendo uma consulta para saber os Anos das vendas na coluna data_venda
as Ano --Apelidando como 'Ano'
FROM vendas --Fazendo uma Consulta para buscar
ORDER by Ano; --Ordenar a Consulta pela coluna 'Ano' que foi apelidada nessa consulta


SELECT strftime('%Y', data_venda) as Ano, strftime('%m', data_venda) as Mes, COUNT(id_venda) as total_vendas
FROM vendas
WHERE Mes = '11' or Mes = '12' OR Mes = '01'
GROUP by Ano, Mes --Primeiro agrupando, pelas colunas que apelidei anteriormente
ORDER by Ano --Depois ordenando 
;












