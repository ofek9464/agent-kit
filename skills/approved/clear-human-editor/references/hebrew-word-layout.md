# Hebrew and mixed-direction Word documents

Read this reference when creating or editing a Hebrew `.docx`, especially when Hebrew is mixed with English terms, filenames, equations, citations, or numeric expressions. Direction and alignment are separate properties. A paragraph can have right-to-left direction while still being incorrectly aligned to the left.

## Paragraphs and styles

- Set Hebrew body paragraphs to right-to-left direction and use the alignment required by the document, normally right or justified.
- Set Hebrew heading styles to right-to-left direction and right alignment. Fix the style definition so new headings inherit the correction.
- Keep English-only sections such as an English abstract or English bibliography left-to-right and left aligned.
- Apply the same rules to headers, footers, footnotes, captions, text boxes, and table cells.

## Mixed Hebrew and English

- Keep the paragraph direction Hebrew, but mark English terms, acronyms, filenames, paths, formulas, and code fragments as left-to-right runs.
- Keep punctuation with the phrase it belongs to. Inspect colons, parentheses, hyphens, slashes, equation numbers, and caption numbers after rendering.
- Prefer a stable visible form such as `איור 5:` or `משוואה (1):`. Do not accept a result that renders as `איור: 5` or reverses an English identifier.
- Do not repair mixed-direction text by inserting visible punctuation or spaces until it appears correct in the editor. Set the underlying run direction and then render the document.

## Tables and equations

- Set Hebrew tables to right-to-left table order. Put the main descriptive field in the rightmost column unless the required template specifies otherwise.
- Set the direction and alignment of each cell independently. English-only cells may remain left-to-right even inside a Hebrew table.
- Use native Word equation objects for displayed mathematics. Keep mathematical content left-to-right and verify the placement of equation numbers in the rendered page.

## Contents and numbered lists

- Build the table of contents from Word heading styles. Do not type page numbers manually.
- Build lists of figures, tables, and equations from captions and Word fields such as Caption and SEQ when the format supports them.
- Update all fields after pagination changes. Check that every displayed page number points to the actual item.
- A partial draft may use temporary lists only when the user agrees. Label them as temporary rather than reporting them as updated automatic fields.

## Pagination

- Follow the required template and document type for page breaks. In a project book that requires chapters or front-matter sections to start on new pages, apply "page break before" to the appropriate styles; do not impose this on every Hebrew document or every Heading 1.
- Keep captions with their figures or tables. For a caption above the object, use "keep with next" on the caption. For a caption below an inline figure, use it on the figure paragraph. For tables or floating objects, use the layout controls appropriate to the document tool and verify the rendered placement. Keep headings with the following paragraph.
- Do not leave a table split across pages without a repeated header row.
- Avoid a page that holds only one line of a paragraph (widow/orphan control on).

## Visual verification

Apply [visual delivery](visual-delivery.md) for inspection coverage and repeat checks. For a new document, inspect every page; after a local edit, inspect changed pages and pages affected by reflow, references, or numbering. Inspect every page again after broad style, direction, field, equation, or pagination changes, when impact is uncertain, or when the user requires it.

Pay extra attention to generated lists, mixed Hebrew-English text, captions, cross-references, tables, formulas, filenames, citations, and page boundaries.

Actually open the rendered page images at readable size. A renderer exit code, generated PDF, extracted text, or direction-property count does not establish visual correctness. Fix defects and inspect the saved revision again under the shared policy. Report the exact verification limitation when rendering or image inspection is unavailable; preserve any explicit user requirement for verified layout.
