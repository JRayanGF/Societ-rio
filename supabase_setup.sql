-- Portal Societário DAGER — Setup do Supabase
-- Execute este script no SQL Editor do seu projeto Supabase

-- 1. Criar a tabela de processos
CREATE TABLE IF NOT EXISTS processos (
  id          BIGSERIAL PRIMARY KEY,
  created_at  TIMESTAMPTZ DEFAULT now(),
  area        TEXT,
  cliente     TEXT,
  cnpj        TEXT,
  razao       TEXT,
  responsavel TEXT,
  unidade     TEXT,
  orgao       TEXT,
  processo    TEXT,
  prazo       DATE,
  status      TEXT DEFAULT 'Em andamento',
  documentos  TEXT,
  obs         TEXT
);

-- 2. Habilitar Row Level Security (RLS)
ALTER TABLE processos ENABLE ROW LEVEL SECURITY;

-- 3. Política: permitir todas operações com a anon key
--    (ajuste conforme sua necessidade de segurança)
CREATE POLICY "Acesso livre anon"
  ON processos
  FOR ALL
  USING (true)
  WITH CHECK (true);

-- 4. Índices para busca rápida
CREATE INDEX IF NOT EXISTS idx_processos_area       ON processos(area);
CREATE INDEX IF NOT EXISTS idx_processos_status     ON processos(status);
CREATE INDEX IF NOT EXISTS idx_processos_responsavel ON processos(responsavel);

-- Pronto! A tabela está criada e pronta para uso.
