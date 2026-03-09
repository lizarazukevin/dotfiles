<%*
const title = await tp.system.prompt("Topic (e.g. Temporal.io, Redis Streams)");
if (!title) return;
const currentFile = tp.file.find_tfile(tp.file.path(true));
const destFolder = "05 Learning";
if (!app.vault.getAbstractFileByPath(destFolder)) {
  await app.vault.createFolder(destFolder);
}
await app.vault.rename(currentFile, destFolder + "/" + title + ".md");
-%>
---
class: learning
tags: 
topic: <% title %>
related-project: 
created: <% tp.date.now("YYYY-MM-DD") %>
---

# <% title %>

> [!info] Why am I learning this?
> What drew you here — a problem you hit, something you read, a recommendation, curiosity.



---

## 🗺 Overview

> Free form — what is this thing? Write it in your own words as you understand it, even if incomplete. You can refine this as you go.



---

## 🔬 Exploration

> This is your scratchpad. Notes, experiments, commands, observations, things that surprised you, things that confused you. No structure required.



---

## 💡 Key Takeaways

> [!success] What actually stuck? Distill the most important things you learned once you've explored enough.

- 
- 

## ⚠️ Gotchas & Pitfalls

> [!warning] Things that tripped you up or that future-you should know before diving in.

- 

---

## 🔗 Resources

> Articles, docs, videos, repos, or people that helped.

- 

## 🧵 Related Notes

-