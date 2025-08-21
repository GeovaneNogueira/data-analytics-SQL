-- Papel dos fornecedores na black friday

--Para adiantar a reunião, fiz uma consulta para trazer em uma coluna o mes e ano das vendas em uma coluna, o nome do fornecedor e quanto produtos desse fornecedor foram vendidos nessa data
SELECT strftime('%Y/%m', data_venda) as "Ano/Mes", f.nome as nome_fornecedor, COUNT(iv.produto_id) as qtd_vendas
FROM itens_venda as iv 
join vendas as v on v.id_venda = iv.venda_id
JOIN produtos as p on p.id_produto = iv.produto_id
JOIN fornecedores as f on f.id_fornecedor = p.fornecedor_id --Agrupei as colunas que quero buscar, sinalizando as relaçoes de cada uma
GROUP by Nome_fornecedor, "Ano/Mes" --Agrupando por Ano e Mes 
ORDER by Nome_fornecedor --Ordenando pelo nome do fornecedor dentro dessa Data
;

SELECT strftime('%Y/%m', v.data_venda) AS "Ano/Mes", f.nome AS Nome_Fornecedor, COUNT(iv.produto_id) AS Qtd_Vendas
FROM itens_venda iv
JOIN vendas v ON v.id_venda = iv.venda_id
JOIN produtos p ON p.id_produto = iv.produto_id
JOIN fornecedores f ON f.id_fornecedor = p.fornecedor_id
GROUP BY Nome_Fornecedor, "Ano/Mes"
ORDER BY "Ano/Mes", Qtd_Vendas;

-- Descobrir o fornecedor que menos vendeu na Blackfriday

SELECT strftime('%Y/%m', v.data_venda) as "Ano/Mes", f.nome as Nome_fornecedor, COUNT(iv.produto_id) as Qtd_vendas
from Itens_venda iv
JOIN vendas v on v.id_venda = iv.venda_id
JOIN produtos p on p.id_produto = iv.produto_id
join fornecedores f on f.id_fornecedor = p.fornecedor_id
where f.nome='NebulaNetworks'
GROUP by f.nome, "Ano/Mes"
ORDER by "Ano/Mes", Qtd_vendas