<%*
const name = await tp.system.prompt("Full name");
if (!name) return;
const currentFile = tp.file.find_tfile(tp.file.path(true));
const destFolder = "06 People";
if (!app.vault.getAbstractFileByPath(destFolder)) {
  await app.vault.createFolder(destFolder);
}
await app.vault.rename(currentFile, destFolder + "/" + name + ".md");
-%>
---
class: person
tags: people
company: 
project: 
created: <% tp.date.now("YYYY-MM-DD") %>
---

# <% name %>

> [!info] Who is this person?
> A quick line on who they are and why they're in your vault.



## 🤝 How You Know Them



## 🧠 Skills & Expertise

- 
- 

## 💼 Company & Projects

- **Company:** 
- **Projects:** 

---

## 🗒 Interaction Notes

> [!note] Log notable conversations, ideas exchanged, or anything worth remembering after an interaction.

### <% tp.date.now("YYYY-MM-DD") %>

---

## 🔗 Related Notes

-