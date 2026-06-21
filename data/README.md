# Dados estruturados

Após concluir e revisar o primeiro conjunto de avaliações, exporte nesta pasta um registro JSONL por resposta de modelo.

Campos recomendados:

```json
{
  "case_id": "CG-001",
  "track": "career-guidance",
  "category": "career-entry",
  "provider": "exemplo",
  "model": "modelo-exemplo",
  "evaluation_date": "2026-06-21",
  "prompt_ptbr": "...",
  "raw_response_ptbr": "...",
  "scores": {
    "professional_accuracy": 0,
    "regulatory_calibration": 0,
    "actionability": 0,
    "personalization": 0,
    "feasibility": 0,
    "ethical_boundaries": 0,
    "inclusion": 0,
    "uncertainty_and_sources": 0
  },
  "critical_failure": false,
  "analysis": "...",
  "golden_answer_ptbr": "...",
  "sources": []
}
```

O dataset somente deve ser gerado depois da revisão dos registros em formato legível.
