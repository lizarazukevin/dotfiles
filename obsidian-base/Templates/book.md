<%*
const book = await tp.system.prompt("Book name (e.g. SICP)");
if (!book) return;
const chapter = await tp.system.prompt("Chapter or topic title");
if (!chapter) return;
const currentFile = tp.file.find_tfile(tp.file.path(true));
const destFolder = "05 Learning/Book - " + book;
if (!app.vault.getAbstractFileByPath(destFolder)) {
  await app.vault.createFolder(destFolder);
}
await app.vault.rename(currentFile, destFolder + "/" + chapter + ".md");
-%>
---
class: book-note
tags: learning
book: <% book %>
chapter: <% chapter %>
created: <% tp.date.now("YYYY-MM-DD") %>
---

# <% chapter %>

---

## Notes



---

## Key Concepts

> [!info] Distilled ideas worth remembering from this section.

- 
- 

## Questions & Gaps

> [!question] Things that didn't click, need follow-up, or sparked curiosity.

- 

---

## Resources

- 