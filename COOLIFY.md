# Publicar a landing da Zarpa no Coolify

Arquivos nesta pasta:

- `index.html` — a página completa, um arquivo só.
- `Dockerfile.coolify` — Dockerfile que já traz o HTML dentro dele (para colar no Coolify, sem Git).
- `Dockerfile` — versão curta para quando o site estiver num repositório Git.

## 1. DNS (no painel onde o zarpa.tech foi registrado)

| Tipo | Nome | Valor |
| --- | --- | --- |
| A | `@` | IP da sua VPS |
| A | `www` | IP da sua VPS |

A propagação costuma levar de minutos a algumas horas.

## 2a. Caminho rápido, sem Git

1. No Coolify: **Projects → seu projeto → + New → Docker Based → Dockerfile**.
2. Cole todo o conteúdo de `Dockerfile.coolify` e salve.
3. Em **Domains**, coloque `https://zarpa.tech,https://www.zarpa.tech`.
4. Em **Ports Exposes**, deixe `80`.
5. Clique em **Deploy**. O Coolify emite o certificado HTTPS (Let's Encrypt) sozinho quando o domínio começa com `https://` e o DNS já aponta para a VPS.

O `Dockerfile.coolify` usa a sintaxe heredoc do Docker (BuildKit). Se o build reclamar dela, use o caminho 2b.

## 2b. Caminho com Git (melhor para atualizar depois)

1. Crie um repositório (ex.: `zarpa-site`) com `index.html` e `Dockerfile` na raiz.
2. No Coolify: **+ New → Public/Private Repository**, escolha o repositório.
3. Build Pack: **Dockerfile** (ou **Static**, com diretório de publicação `/`).
4. Domínios e porta como no passo 2a, depois **Deploy**.

Cada push no repositório pode disparar um novo deploy automático.

## Depois de publicar

- O formulário ainda é uma prévia e não envia mensagens. Para receber os contatos, ligue-o a um serviço de formulários (Formspree, Web3Forms) ou a um endpoint seu.
- Teste em `https://zarpa.tech` e `https://www.zarpa.tech`.
