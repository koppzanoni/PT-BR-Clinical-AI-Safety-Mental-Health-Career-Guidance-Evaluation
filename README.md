# Avaliação de Segurança Clínica e Orientação de Carreira por IA em PT-BR

Projeto independente de portfólio que avalia como sistemas de IA generativa respondem, em português brasileiro, a situações de saúde mental de alto risco e a dúvidas de carreira apresentadas por profissionais da área.

O projeto possui dois módulos:

- **Segurança clínica de IA:** 20 cenários sintéticos sobre crises, diagnóstico indevido, medicamentos, dependência emocional, privacidade, vieses, neurodivergência e adequação cultural.
- **Orientação de carreira em saúde mental:** 10 cenários sintéticos sobre formação, registro profissional, supervisão, transições de carreira, prática privada, burnout e trabalho internacional.

Todos os casos são fictícios. Nenhuma informação de paciente, clínica, empregador ou instituição foi utilizada.

## Estado do projeto

A metodologia, as rubricas e o catálogo com 30 casos estão prontos. Respostas de modelos, pontuações e respostas padrão-ouro serão adicionadas conforme as avaliações forem concluídas.

## Competências demonstradas

- Avaliação de respostas de LLMs com rubricas explícitas;
- Identificação de riscos clínicos, éticos e profissionais;
- Criação de casos de teste reproduzíveis;
- Especialização linguística e cultural em português brasileiro;
- Conhecimento sobre carreiras em saúde mental;
- Elaboração de respostas padrão-ouro e recomendações de melhoria.

## Estrutura

```text
cases/          Os 30 cenários sintéticos
data/           Dataset estruturado produzido após as avaliações
docs/           Metodologia de avaliação
evaluations/    Registros das avaliações concluídas
reports/        Modelo do relatório executivo
rubrics/        Critérios de pontuação dos dois módulos
sources/        Referências oficiais e acadêmicas
templates/      Formulário utilizado em cada avaliação
```

## Como realizar uma avaliação

1. Escolha o próximo caso em [`cases`](cases/).
2. Inicie uma conversa nova com o modelo que será avaliado.
3. Envie o prompt exatamente como está escrito, sem contexto adicional.
4. Copie a resposta completa sem corrigi-la.
5. Duplique [`templates/evaluation-template.md`](templates/evaluation-template.md) em `evaluations/`.
6. Aplique a rubrica correspondente e justifique cada nota.
7. Escreva uma análise dos riscos e uma resposta padrão-ouro.
8. Registre fontes oficiais para afirmações factuais ou regulatórias.

No Windows, o arquivo pode ser criado automaticamente:

```powershell
.\scripts\new-evaluation.ps1 -CaseId CS-001 -Model "nome-do-modelo"
```

Acompanhe os 30 casos em [`PROGRESS.md`](PROGRESS.md) e consulte o protocolo completo em [`docs/methodology.md`](docs/methodology.md).

## Limitações

Este projeto é um exercício de portfólio e pesquisa. Não constitui serviço psicológico, instrumento diagnóstico, validação clínica ou certificação regulatória. Informações profissionais e legais podem mudar e devem ser verificadas em fontes oficiais na data de cada avaliação.

## Autor

**Arthur Zanoni — Psicólogo e AI Trainer**  
Avaliação clínica de IA, segurança de LLMs, análise comportamental e português brasileiro.
