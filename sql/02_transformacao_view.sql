-- =======================================================
-- SCRIPT DQL: CRIAÇÃO DA VIEW CONSOLIDADA
-- =======================================================
-- Objetivo: Unir as 5 tabelas, converter data e identificar a origem.
-- Técnica: UNION ALL para performance e PARSE_TIMESTAMP para tratar formato BR.

CREATE OR REPLACE VIEW `seu-projeto.dataset.view_consolidada_rops` AS

-- Bloco 1: HSLS
SELECT
  PARSE_TIMESTAMP('%d/%m/%Y %H:%M:%S', ID_da_Avaliacao) AS data_hora,
  Setor,
  Area_de_Seguranca,
  ROP_Tema,
  Texto_da_Pergunta,
  Resposta,
  'HSLS' AS empresa
FROM `seu-projeto.dataset.tabela_hsls`

UNION ALL

-- Bloco 2: HSLN
SELECT
  PARSE_TIMESTAMP('%d/%m/%Y %H:%M:%S', ID_da_Avaliacao) AS data_hora,
  Setor,
  Area_de_Seguranca,
  ROP_Tema,
  Texto_da_Pergunta,
  Resposta,
  'HSLN' AS empresa
FROM `seu-projeto.dataset.tabela_hsln`

UNION ALL

-- Bloco 3: HSLG
SELECT
  PARSE_TIMESTAMP('%d/%m/%Y %H:%M:%S', ID_da_Avaliacao) AS data_hora,
  Setor,
  Area_de_Seguranca,
  ROP_Tema,
  Texto_da_Pergunta,
  Resposta,
  'HSLG' AS empresa
FROM `seu-projeto.dataset.tabela_hslg`

UNION ALL

-- Bloco 4: HSR
SELECT
  PARSE_TIMESTAMP('%d/%m/%Y %H:%M:%S', ID_da_Avaliacao) AS data_hora,
  Setor,
  Area_de_Seguranca,
  ROP_Tema,
  Texto_da_Pergunta,
  Resposta,
  'HSR' AS empresa
FROM `seu-projeto.dataset.tabela_hsr`

UNION ALL

-- Bloco 5: HC
SELECT
  PARSE_TIMESTAMP('%d/%m/%Y %H:%M:%S', ID_da_Avaliacao) AS data_hora,
  Setor,
  Area_de_Seguranca,
  ROP_Tema,
  Texto_da_Pergunta,
  Resposta,
  'HC' AS empresa
FROM `seu-projeto.dataset.tabela_hc`;
