# Project-book voice

Use this reference when rewriting a Hebrew (or mixed Hebrew/English) project book, capstone, or final report so it reads as written by the students who did the work. Adapt the guidance to the authors, assignment, and existing register; chapter structure lives in [project-book-structure.md](project-book-structure.md). Never copy wording or content from a model report.

## Planning

Use the planning and review boundary in [the main editing skill](../SKILL.md). For a substantial rewrite across chapters, read [long-document editing](long-document-editing.md) and build one compact document map before changing individual chapters. Record the through-line, each chapter's purpose, and one home for each recurring idea. Keep the agreed section skeleton unless changing it is within the authorized scope.

For a chapter whose structure needs substantial revision, plan its paragraphs together: each paragraph's contribution and the transition to the next. Resolve jumps and repeats before rewriting, then read the paragraph openings in sequence. Check affected chapters when the plan changes; do not redo unaffected chapters. A local wording edit needs only the passage and its surrounding context.

## Reader and voice

For reader context, supported authorial presence, and sequential reading, use [reader-and-voice.md](reader-and-voice.md). Keep abstract and methods requirements intact; an engaging project report does not require a story opening in every section.

## Voice

- **Match the authors and required register.** Use first-person plural for a team's actions when the authors and assignment permit it: "מדדנו", "בחרנו", "נתקלנו", "החלטנו". Use singular for an individual author when appropriate, and preserve an impersonal register when required. Never imply that the authors performed work unsupported by the source.
- **Prefer the active verb.** Change "נבחנו ארבעה בקרים" to "השווינו ארבעה בקרים" when the team is the actor.
- **Use ordinary words.** Pick the word a student would say to the examiner out loud. Keep technical terms exact; simplify the words around them.
- **Keep sentences readable.** Split overloaded sentences when doing so clarifies the reasoning. Keep qualifications with the claims they limit and allow connected ideas to share a sentence.

## Plain terms

- Simplify wording around technical terms. Replace a term only when the alternative preserves its exact meaning; otherwise explain it briefly. Use one stable term per concept and preserve distinctions between related concepts.
- Introduce a tool by what it lets the team do before its technical details ("SUMO הוא סימולטור שבו אפשר לבנות צמתים עם רכבים והולכי רגל..."; "TraCI הוא הממשק שדרכו קוד Python קורא וכותב לסימולציה").
- Define a jargon word the first time in one plain sentence, or replace it. Cut glossary entries that state the obvious.

## Openings and goals

- Add a short orienting opening when the chapter needs one; avoid repeating the project problem or adding a formulaic opening to every chapter.
- State the project goal directly: "מטרת הפרויקט היא לפתח...", then what the system lets the team check or achieve.
- Define the engineering problem in general terms first; name the specific test setup afterwards.

## Telling the work

- **Use the order that explains the work.** Problem → attempt → outcome → revision can help explain development decisions. Use conceptual or evidence-based order when chronology would obscure the method or results.
- **Explain consequential decisions with their supported reasons.** "החלטנו להוסיף... כדי לבדוק אם...". Readers remember reasons, not lists of choices.
- **Name failures plainly.** "הניסיון הראשון לא עבד כי..." is stronger than a hedged description of an anomaly.

## Figures, tables, and numbers

- Give figures and tables enough context to be interpreted. Use nearby prose for the pattern, exception, or implication that matters; avoid a fixed introduction-and-summary formula for every display.
- Keep numbers in prose when the argument depends on them. Move dense comparisons into a table rather than imposing a fixed count per sentence.

## Caveats

- State each limitation fully **once**, in the section that owns it (usually scope, methodology limits, or conclusions).
- Elsewhere, use a short pointer or nothing. Do not repeat "this is not a deployment approval" or "this was not a measured comparison" in every section.
- Keep caveats that change the meaning of a specific result next to that result.
- Remove production bookkeeping that adds no value for the reader. Preserve filenames, script names, versions, hashes, timestamps, or verification records when they are needed to understand the method, verify results, or reproduce the work. Keep essential context in the main text and place supporting detail in an appendix when appropriate; never invent missing provenance.
- Keep a light hands-on feel: a few concrete moments from the actual work, one or two sentences each, where they explain a decision (a bug found and fixed, hardware and hours spent, a crash that forced a resume, a check that caught a bad file).

## What not to borrow from informal model reports

- Promotional adjectives ("חדשני", "מרתק", "מהפכני").
- Overclaims ("מדויק ואמין מאוד") unsupported by the evidence.
- Filler roadmaps that restate every chapter at length.

## Check

Read the rewritten paragraph aloud. It should sound like a student explaining the project to the examiner: direct, specific, honest about limits, and not defensive.
