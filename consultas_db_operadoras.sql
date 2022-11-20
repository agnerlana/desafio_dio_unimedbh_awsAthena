# Base de dados de beneficiarios extraida do ANS Tabnet
# Beneficiarios por Operadora e UF (ref Set/2022)

# Selecionando toda a base de beneficiarios
SELECT * FROM "db_beneficiarios"."beneficiarios_operadora_ufs"; ORDER BY operadora

# Somando o total de beneficiarios na db
SELECT SUM(qtd_beneficiarios) "total_benef"
    FROM "db_beneficiarios"."beneficiarios_operadora_ufs"; # 50.199.241 beneficiarios

# Somando o total de beneficiarios da Unimed-BH
SELECT SUM(A.qtd_beneficiarios) "total_benef"
    FROM "db_beneficiarios"."beneficiarios_operadora_ufs" AS A
    WHERE A.cod_operadora = '343889';  # 1.485.725 beneficiarios

# Agrupando o total de beneficiarios por operadora
SELECT A.operadora, SUM(A.qtd_beneficiarios) "qtd_benef"
    FROM "db_beneficiarios"."beneficiarios_operadora_ufs" AS A
    GROUP BY A.operadora
    ORDER BY qtd_benef DESC;

# Agrupando o total de beneficiarios por UFs
SELECT A.uf, SUM(A.qtd_beneficiarios) "qtd_benef"
    FROM "db_beneficiarios"."beneficiarios_operadora_ufs" AS A
    GROUP BY A.uf
    ORDER BY qtd_benef DESC;

# Total de beneficiarios da Unimed-BH por UF
SELECT A.operadora, A.uf, SUM(A.qtd_beneficiarios) "qtd_benef"
    FROM "db_beneficiarios"."beneficiarios_operadora_ufs" AS A
    WHERE A.cod_operadora = '343889'
    GROUP BY A.operadora, A.uf
    ORDER BY qtd_benef DESC;


####