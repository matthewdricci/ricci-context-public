# Shape Up

> **Provenance:** This page combines Matt's stated convictions about proposing and selecting initiatives with his attached `shape-up-pitch-format.md`. Blockquoted text and the pitch-format sections are Matt's words, transferred verbatim. The operating-flow map and betting-table checklist are explicitly editorial. One employer-specific section from the attached artifact—“Where pitches live (rule for people and AI tools)”—and its internal related-document links are intentionally omitted from this public repository.

## Matt's conviction

> my goal in working is that we largely we should keep decrentalized lists [https://basecamp.com/shapeup/2.1-chapter-07#decentralized-lists](https://basecamp.com/shapeup/2.1-chapter-07#decentralized-lists) and that we regularly narrow down to a few potential bets [https://basecamp.com/shapeup/2.1-chapter-07#a-few-potential-bets](https://basecamp.com/shapeup/2.1-chapter-07#a-few-potential-bets) and the top level company alignment goes to a betting table [https://basecamp.com/shapeup/2.2-chapter-08#the-betting-table](https://basecamp.com/shapeup/2.2-chapter-08#the-betting-table)

## The operating flow

This is an editorial map of the three concepts Matt named and the pitch format below:

1. **Keep decentralized lists.** Teams and individuals retain the ideas, requests, bugs, or opportunities relevant to them; those lists do not silently become one central commitment queue.
2. **Shape an initiative into a pitch.** Use the pitch format below to make the problem, appetite, possible solution, gotchas, and no-gos legible.
3. **Narrow to a few potential bets.** The decision surface is a small set of deliberately shaped possibilities, not every item anybody has retained.
4. **Take company-level alignment to a betting table.** The betting table chooses among those potential bets and produces the explicit commitment.

The Shape Up source chapters describe [bets instead of backlogs](https://basecamp.com/shapeup/2.1-chapter-07), [the betting table](https://basecamp.com/shapeup/2.2-chapter-08), and [how to write a pitch](https://basecamp.com/shapeup/1.5-chapter-06).

## Open prerequisite

> Some of this has a pre-requsite, such as "what would the betting table ceremony be, and who would be at it, and what are the mechanics?"

### Betting-table design still to decide

The following is an editorial checklist of decisions that remain open; it does not answer them on Matt's behalf:

- What is the ceremony's cadence and place in the planning cycle?
- Who attends, and which attendee has final decision authority?
- Who may submit or revive a pitch?
- What must be read asynchronously before the meeting?
- What qualifies a pitch to become one of the few potential bets?
- What capacity and team-availability information must be present?
- What is decided in the room, and what is explicitly not discussed there?
- What artifact records the chosen bets, owners, appetite, and cycle plan?
- What happens to a pitch that is not selected?
- What protects a placed bet from interruption?

Until those mechanics are deliberately defined, this page records the desired flow without pretending the operating ceremony already exists.

---

## Shape Up pitch format

Last reviewed: September 14, 2026

The format Matt Ricci most likes to propose a bet. It comes from 37signals' [Shape Up](https://basecamp.com/shapeup) (free online) with a few local additions. A pitch defines a problem worth betting on, caps the investment, and sketches a solution at the right altitude without prescribing implementation. Anyone can write one; product managers use it by default, and Matt Ricci's `/shapeup` agent skill produces exactly this shape.

### The sections

```
Objective: <verb phrase: the outcome, not the feature>

Problem / Opportunity: what's broken or possible today? The raw story or
  numbers that make this worth betting on. Specific, not abstract.

Work Appetite: how much are we willing to invest? ("2 weeks", "6 weeks max").
  Not an estimate of the work; a cap on the bet. Fixed time, variable scope. This also depends on number of people or a team size. 

Possible Solution(s): the candidate paths, ranked, with a recommendation:
  "Recommended path", "Possible alternative", "Probably no (and why)".
  Core elements at fat-marker altitude: concrete enough to evaluate, loose
  enough to leave room.
    Nice-to-haves / stretch: explicitly the first things cut when time runs
    short. The appetite never grows to fit them. Omit when empty.

Possible "Gotchas": things that could get complex or distract us. Known
  unknowns, tempting tangents, technical traps that could blow the appetite.
  (Shape Up calls these rabbit holes.)

No-Gos: explicitly out of scope.

Open Questions: unresolved items, each as: bold topic, the question, why it
  matters. Prefix an owner when known 

---
If we're actioning it
Include here: Linked items

  Directly Responsible Individual (DRI): one named human who owns the outcome.
    Often a product manager; just as often not. One name, never a team and
    never two people.
  Build Team: who's doing the work. Names where known, otherwise the shape
    ("1 backend + 1 designer"). Not a resourcing plan.
  Related Links: the other artifacts this connects to, one line each, labeled.

Status: Shaping | Awaiting bet | Bet placed | Parked | Dropped
Review-by: <date; not bet by then means Parked, not deleted>
```

Before the bet is placed, "If we're actioning it" still appears, with unassigned fields written as `Not yet assigned; set at the betting table.` That is a status, not a placeholder. Never invent a DRI or a team.

### The bar each section has to clear

- **Problem before solution.** If the write-up is all solution, ask for the underlying problem first. A pitch with a weak problem section is a solution looking for a justification.
- **Appetite is a constraint, not an estimate.** Ask "how much is this worth?", never "how long will it take?". If scope obviously exceeds the appetite, say so and propose what to hammer off; don't quietly stretch it.
- **Right altitude on the solution.** Fat-marker sketch: named elements, flows, affordances. No wireframes, no schema, no library choices. Too concrete steals the builders' room to maneuver; too vague can't be judged for feasibility. One viable approach proves the bet is shapeable; it isn't a spec.
- **Hunt gotchas actively.** What part of this could someone lose a week to? Which edge case is deceptively hard? Which dependency isn't in our control? An empty Gotchas section usually means the shaping isn't done.
- **DRI is one person.** If the answer to "who owns this?" is a team, a pair, or "we", the bet isn't ready to action.
- **No-Gos earn their keep.** Each one should preempt a real debate. "We will not auto-deliver the link" beats "no scope creep."
- **Stretch discipline.** Anything in Nice-to-haves must be genuinely cuttable. If the pitch fails without it, it belongs in the core solution.

### Writing it

- Readable by a cold reader who wasn't in the shaping conversation. The pitch is the bet's whole argument at the betting table.
- Lead with the punchline, short paragraphs, bold key points, assert rather than observe.
- Link source material (prior docs, recordings, prototypes) inline where it supports a claim.
- Avoid: prescribing implementation; estimating instead of appetite-setting; filling thin sections with plausible filler (flag the gap instead); letting stretch goals inflate the core pitch.

### Method sources

Shape Up (37signals), free online:

- [Principles of Shaping](https://basecamp.com/shapeup/1.1-chapter-02)
- [Set Boundaries (appetite)](https://basecamp.com/shapeup/1.2-chapter-03)
- [Find the Elements (fat-marker sketches)](https://basecamp.com/shapeup/1.3-chapter-04)
- [Risks and Rabbit Holes](https://basecamp.com/shapeup/1.4-chapter-05)
- [Write the Pitch](https://basecamp.com/shapeup/1.5-chapter-06)
- [Hand Over Responsibility (the build team's autonomy)](https://basecamp.com/shapeup/3.1-chapter-10)
