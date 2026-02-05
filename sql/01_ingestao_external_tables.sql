-- =======================================================
-- SCRIPT DDL: CRIAÇÃO DE TABELAS EXTERNAS (Google Sheets)
-- =======================================================
-- Objetivo: Criar conexões vivas com as planilhas de cada hospital.
-- Estratégia: Definir todas as colunas como STRING para evitar erros de leitura (Schema Drift).

-- 1. Nome da 1ª empresa (sigla)
CREATE OR REPLACE EXTERNAL TABLE `seu-projeto.dataset.tabela_hsls`
(
  ID_da_Avaliacao STRING,
  Setor STRING,
  Area_de_Seguranca STRING,
  ROP_Tema STRING,
  Texto_da_Pergunta STRING,
  Resposta STRING
)
OPTIONS(
  format = 'GOOGLE_SHEETS',
  sheet_range = 'Dados Mapeados',
  uris = ['[LINK_DA_PLANILHA_HSLS]'], -- Substitua pelo link real se for privado
  skip_leading_rows = 1
);

-- 2. Nome da 2º empresa (sigla)
CREATE OR REPLACE EXTERNAL TABLE `seu-projeto.dataset.tabela_hsln`
(
  ID_da_Avaliacao STRING,
  Setor STRING,
  Area_de_Seguranca STRING,
  ROP_Tema STRING,
  Texto_da_Pergunta STRING,
  Resposta STRING
)
OPTIONS(
  format = 'GOOGLE_SHEETS',
  sheet_range = 'Dados Mapeados',
  uris = ['[LINK_DA_PLANILHA_HSLN]'],
  skip_leading_rows = 1
);

-- 3. Nome da 3ª empresa (sigla)
CREATE OR REPLACE EXTERNAL TABLE `seu-projeto.dataset.tabela_hslg`
(
  ID_da_Avaliacao STRING,
  Setor STRING,
  Area_de_Seguranca STRING,
  ROP_Tema STRING,
  Texto_da_Pergunta STRING,
  Resposta STRING
)
OPTIONS(
  format = 'GOOGLE_SHEETS',
  sheet_range = 'Dados Mapeados',
  uris = ['[LINK_DA_PLANILHA_HSLG]'],
  skip_leading_rows = 1
);

-- 4. Nome da 4ª empresa (sigla)
CREATE OR REPLACE EXTERNAL TABLE `seu-projeto.dataset.tabela_hc`
(
  ID_da_Avaliacao STRING,
  Setor STRING,
  Area_de_Seguranca STRING,
  ROP_Tema STRING,
  Texto_da_Pergunta STRING,
  Resposta STRING
)
OPTIONS(
  format = 'GOOGLE_SHEETS',
  sheet_range = 'Dados Mapeados',
  uris = ['[LINK_DA_PLANILHA_HC]'],
  skip_leading_rows = 1
);

-- 5. Nome da 5ª empresa (sigla)
CREATE OR REPLACE EXTERNAL TABLE `seu-projeto.dataset.tabela_hsr`
(
  ID_da_Avaliacao STRING,
  Setor STRING,
  Area_de_Seguranca STRING,
  ROP_Tema STRING,
  Texto_da_Pergunta STRING,
  Resposta STRING
)
OPTIONS(
  format = 'GOOGLE_SHEETS',
  sheet_range = 'Dados Mapeados',
  uris = ['[LINK_DA_PLANILHA_HSR]'],
  skip_leading_rows = 1
);
