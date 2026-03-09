<%*
const title = await tp.system.prompt("Idea title");
if (!title) return;
const project = await tp.system.prompt("Related project (e.g. Quri)");
if (!project) return;
const currentFile = tp.file.find_tfile(tp.file.path(true));
const destFolder = "00 Seeds";
if (!app.vault.getAbstractFileByPath(destFolder)) {
  await app.vault.createFolder(destFolder);
}
await app.vault.rename(currentFile, destFolder + "/" + title + ".md");
-%>
---
class: seed
tags: idea
project: "[[<% project %>]]"
status: seedling
created: <% tp.date.now("YYYY-MM-DD") %>
---

# 💡 <% title %>

## 🌱 Core Thought

> [!info] What is the idea?
> A clear one or two sentence summary of the idea — what it is and what it does. Write it as if explaining to someone with no context.



## 🎯 Why It Matters

> [!success] Why is this worth considering?
> What problem does it solve, what opportunity does it open up, or what gap does it fill? Be specific about the value.



## 🔭 Potential Direction

> [!abstract] Where could this go?
> Rough thoughts on how this could be explored, built, or validated. Not a plan — just a direction.



## ⚠️ Risks & Unknowns

> [!warning] What could make this a bad idea?
> Constraints, assumptions that might be wrong, or things that need to be true for this to work.

- 

## 🔗 Sources & References

> [!note] Anything that inspired or supports this idea — links, articles, prior art, related projects.

- 

## 🧵 Related Notes

- 