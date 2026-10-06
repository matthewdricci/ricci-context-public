# Chart storytelling harness rules

> **Use:** Load this file as standing rules whenever an agent designs, critiques, edits, or explains charts, dashboards, tables, or data slides for Matt. Apply the rules; do not reproduce third-party artwork or transcripts.

## Provenance

| Field | Value |
| --- | --- |
| Canonical source | Instagram reel by [@levifikri.io](https://www.instagram.com/levifikri.io/) |
| URL | https://www.instagram.com/reel/Dd_zVLNI5-k/ |
| Posted | 2026-10-02 |
| Why it is here | Matt wants work harnesses that consume `ricci-context-public` to treat chart storytelling as enforceable rules, not optional taste. |
| What is not here | Screenshots, video, or a frame-by-frame transcript of the reel (see public content policy). |

Editorial note: the rules below are operational restatements for agents. They are not Matt's verbatim prose and must not be presented as quotations from him or from the creator.

---

## North star

1. Every chart answers exactly one question: **What should the reader notice?**
2. Prefer **story over dump**: context → surprise → action.
3. Showing data is "here are the numbers." Telling a story is "here's what changed, why, and what to do."

---

## Hard rules (do / don't)

### Comparison and focus

- **DO** sort categories when ranking or comparing magnitudes (prefer sorted bars over many-slice pies).
- **DON'T** use pies with many slices when nearby slices are hard to compare.
- **DO** highlight the one series or category that carries the point; mute the rest.
- **DON'T** plot many overlapping lines with a legend-first "decode me" layout (rainbow spaghetti).
- **Color means attention.** If everything is colorful, nothing is.

### Scale honesty

- **DO** start quantitative bar/line baselines at zero unless a non-zero baseline is explicitly justified in the caption.
- **DON'T** truncate an axis so a tiny change looks dramatic.
- **If the change is ~2%, the visual should look like ~2%.**

### Titles and annotation

- **DO** headline the insight in the title (what happened / what it means).
- **DON'T** use empty labels like "Revenue by Quarter" with no point.
- **DO** annotate the causal or event moment on the chart when you know it.
- Title states the claim; marks explain the why.

### Chart junk

- **DO** use flat, readable marks with values on or beside them when that helps.
- **DON'T** use fake 3D, decorative gradients, heavy gridlines, or shadows that are not data.
- **If it isn't data, delete it.**

### Time windows and averages

- **DO** show the full time window that matches the claim.
- **DON'T** cherry-pick a short slice that reverses the long-run story without saying so.
- **DO** show distribution / spread when "the average" would hide clusters or modes.
- **DON'T** lead with a single average when the shape of the data is the point.

### Causation and percentages

- **DO** treat strong correlation as a cue to look for a third factor, not as proof of causation.
- **DON'T** imply A causes B from co-movement alone.
- **DO** show the base (n / denominator) whenever you say a percentage change or relative risk.
- **DON'T** lead with "doubled" / "+100%" without the absolute base rates.

### Dense tables

- **DO** use a heatmap or similar encoding when the job is "find the hotspot."
- **DON'T** dump a large numeric grid and expect the eye to find the pattern unaided.
- **Let the eye find the pattern first; then give the exact number.**

---

## Story formula (required when recommending a chart)

State these three beats before or with the chart:

1. **Context** — what is normal / what we were looking at
2. **Surprise** — what changed or what to notice
3. **Action** — what to do next

---

## Checklist before shipping a chart

Ask, in order:

1. What single question should the reader answer from this visual?
2. Is the encoding honest about magnitude (baseline, window, base rates)?
3. Is attention guided (sort / highlight / muted rest)?
4. Does the title state the insight?
5. Is every non-data decoration removed?
6. Are correlation and % claims grounded (third factor / denominator)?
7. Are Context → Surprise → Action explicit?

If any answer is no, revise before presenting.

---

## Agent output shape

When proposing or rewriting a chart, respond with:

```markdown
**Notice:** <one sentence>
**Why this encoding:** <one sentence>
**Context → Surprise → Action:**
1. ...
2. ...
3. ...
**Avoided failure mode:** <which rule above>
```

Then the chart spec or revised graphic.

---

## Related private material

Frame captures and a longer study note live outside this public repo (local pack / private context). Agents consuming only `ricci-context-public` should rely on this file alone.
