# Portal Societário DAGER

Sistema de gestão de processos societários com Supabase + Netlify.

---

## 🚀 Deploy no Netlify

### Opção 1 — Arrastar e soltar (mais rápido)
1. Acesse [app.netlify.com](https://app.netlify.com)
2. Faça login (pode usar conta GitHub)
3. Na dashboard, arraste a **pasta inteira** do projeto para a área indicada
4. Pronto! O Netlify gera uma URL automática (ex: `https://dager-portal.netlify.app`)

### Opção 2 — Via GitHub (recomendado para atualizações automáticas)
1. Crie um repositório no GitHub e suba os arquivos
2. No Netlify: **Add new site → Import an existing project**
3. Conecte ao GitHub e selecione o repositório
4. Build settings:
   - **Base directory**: (vazio)
   - **Build command**: (vazio)
   - **Publish directory**: `.`
5. Clique em **Deploy site**

---

## 🗄️ Configurar o Supabase

### 1. Criar o projeto
1. Acesse [supabase.com](https://supabase.com) e crie uma conta gratuita
2. Clique em **New project**
3. Escolha nome, senha do banco e região (South America — São Paulo)
4. Aguarde o projeto inicializar (~2 min)

### 2. Criar a tabela
1. No painel do Supabase, vá em **SQL Editor**
2. Cole o conteúdo do arquivo `supabase_setup.sql`
3. Clique em **Run**

### 3. Pegar as credenciais
1. Vá em **Project Settings → API**
2. Copie:
   - **Project URL** → ex: `https://xyzxyz.supabase.co`
   - **anon public key** → começa com `eyJhbGci...`

### 4. Configurar no portal
1. Abra o portal no navegador
2. Clique no botão **⚙ Config** (canto superior direito)
3. Cole a URL e a Key
4. Clique em **Salvar e Conectar**

O status no cabeçalho ficará verde: **Supabase conectado** ✓

---

## 📁 Estrutura dos arquivos

```
dager-portal/
├── index.html          # Aplicação completa (HTML + CSS + JS)
├── netlify.toml        # Configuração de headers para o Netlify
├── supabase_setup.sql  # Script para criar a tabela no Supabase
└── README.md           # Este arquivo
```

---

## ⌨️ Atalhos de teclado

| Atalho | Ação |
|--------|------|
| `Ctrl + Enter` | Salvar processo |
| `Esc` | Cancelar edição / fechar modal |

---

## 💡 Observações

- **Sem Supabase configurado**: os dados são salvos no `localStorage` do navegador como fallback automático.
- **CNPJ**: formatado automaticamente durante digitação.
- **Prazos vencidos**: aparecem em vermelho com ⚠ na tabela.
- As credenciais ficam salvas no `localStorage` do navegador — não é necessário reconfigurar a cada acesso.
