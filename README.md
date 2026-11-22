# Football Stats API

API REST desenvolvida em **Java** com **Spring Boot** para consulta, processamento e análise de estatísticas de futebol. 

Este projeto é desenvolvido com o auxílio de agentes de Inteligência Artificial (guiados por regras definidas em `AGENTS.md`), assegurando a qualidade, fiabilidade e segurança do código através de pipelines rigorosos de testes automatizados, *pre-commit hooks* e análise estática com **LiquidJava**.

---

## Arquitetura e Stack Tecnológica

* **Linguagem:** Java 21
* **Framework Web:** Spring Boot (Spring Web)
* **Gestão de Dependências e Build:** Apache Maven (`pom.xml`)
* **Testes:** JUnit 5 / Spring Boot Test
* **Análise Estática e Verificação:** LiquidJava (Refinement Types)
* **Controlo de Qualidade:** Pre-commit hooks
* **Containerização:** Docker (ambiente Linux)
* **Desenvolvimento Assistido por IA:** Codex (`AGENTS.md`)

---

## Estrutura de Branches (Git Workflow)

O repositório segue um fluxo colaborativo dividido em branches individuais para evitar conflitos durante o desenvolvimento:

* `main` — Código estável, testado e verificado pelo LiquidJava.
* `fc65647` — Branch de desenvolvimento (Ricardo Ferreira).
* `fc65668` — Branch de desenvolvimento (Tomás Martins).

> **Regra:** Nenhuma alteração entra na `main` sem passar pelos testes unitários (`mvn test`) e pela verificação estática.

---

## Como Executar o Projeto

### 1. Ambiente Docker (Linux)
Para garantir que o ambiente de execução é idêntico em todas as máquinas, o projeto corre dentro de um contentor Docker:

```bash
# Construir a imagem
docker build -t football-stats-api .

# Executar o contentor
docker run -d -p 8080:8080 --name football-api football-stats-api

