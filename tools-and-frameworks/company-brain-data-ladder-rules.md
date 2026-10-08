# Company brain: data-ladder harness rules

> **Use:** Load this file as standing rules whenever an agent answers a question about company data, metrics, or business performance for Matt or his team, or designs how LLMs at his company should reach data. Apply the rules; do not reproduce the source episode.

## Provenance

| Field | Value |
| --- | --- |
| Canonical source | Lenny's Newsletter / Podcast: [Build your own company brain](https://www.lennysnewsletter.com/p/build-your-own-company-brain-the) |
| Matt's source text | A message Matt wrote to a colleague on 2026-10-08, recalling the first third of the episode a week or two after listening. It is reproduced below with company-identifying details replaced by bracketed placeholders. |
| Why it is here | Matt wants work harnesses that consume `ricci-context-public` to follow this ladder as enforceable rules when they reach for company data. |
| What is not here | The episode's text or transcript (see the public content policy). Names of colleagues, internal systems, and links. |

## Matt's words, verbatim (company details redacted in brackets)

> I just listened to this a week or two ago, and I'm realizing the first third of it he was talking something about how he had a system for employees to have their LLMs consume BI resources
>
> It was something like:
>
> 1. A piece of context to orient the LLM on what's available to them (which we could put on [the company intranet home page])
> 2. Having the LLM first check any available production reports for context on data
> 3. Followed by any 'golden tables' or whatever the right language is for clean trusted data for [the company]
> 4. Followed by a more "wild west" available set of informations and context
>
> ^ the idea being something like if the LLM can first serve from an official production dashboard, it stops there

Editorial note: the rules below are operational restatements of the message above, written for agents. They are not Matt's verbatim prose and must not be presented as quotations from him or from the episode.

---

## North star

1. **Work down the ladder and stop at the first rung that answers.** If an official production report answers the question, answer from it and go no further.
2. An answer inherits the trust of its source, so always say which rung it came from.

---

## The ladder

| Rung | What the agent reads | Trust |
| --- | --- | --- |
| 1. Orientation | The single page that says what data resources exist and how to use them | A map, not data. Read it first. |
| 2. Production reports | Official, sanctioned dashboards and reports | Highest |
| 3. Golden tables | Clean, trusted, curated tables | High |
| 4. Wild west | Everything else: raw tables, ad-hoc exports, loose docs | Low. Say so. |

---

## Hard rules (do / don't)

- **DO** read the orientation page (rung 1) before querying anything. If none exists, say so and propose one.
- **DO** answer from a production report when one covers the question, even if a raw table seems more precise.
- **DON'T** compute a number from raw tables when a production report already publishes it. Two numbers for one metric erode trust in both.
- **DO** name the rung and the source (report or table name) in every data answer.
- **DO** flag any rung-4 answer as unverified and say which rung-2 or rung-3 source would confirm it.
- **DON'T** silently mix rungs in one answer. If you had to combine them, say which figure came from where.
- **DO** report gaps: when a common question can only be answered from rung 4, note that a production report or golden table is missing.

---

## Agent output shape

When answering a data question, respond with:

```markdown
**Answer:** <the number or finding, in one sentence>
**Rung:** <1–4> — <source name>
**Confidence:** <why this rung is or isn't enough>
**Gap (if any):** <the report or golden table that should exist>
```

---

## Related

- [Chart storytelling rules](chart-storytelling-rules.md): once the number is trusted, these rules govern how to show it.
