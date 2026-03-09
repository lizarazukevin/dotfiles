<%*
const project = await tp.system.prompt("Project (e.g. Quri)");
if (!project) return;
const milestone = await tp.system.prompt("Milestone (e.g. M1)");
if (!milestone) return;
const title = await tp.system.prompt("Design doc title");
if (!title) return;
const currentFile = tp.file.find_tfile(tp.file.path(true));
const destFolder = "02 Design/" + project;
if (!app.vault.getAbstractFileByPath(destFolder)) {
  await app.vault.createFolder(destFolder);
}
await app.vault.rename(currentFile, destFolder + "/" + title + ".md");
-%>
---
class: design
tags: design
project: "[[<% project %>]]"
milestone: "[[<% milestone %>]]"
author: 
status: draft
created: <% tp.date.now("YYYY-MM-DD") %>
---

# <% title %>

> [!info] Summary
> One or two sentences on what this document covers and what decision it is driving toward.



---

## 🧩 Problem

> [!warning] What is the technical problem?
> Describe it clearly and precisely. Include why it needs to be solved now and what breaks or degrades without a solution.



## 🚧 Constraints

> [!note] What are the boundaries this solution must work within?
> Technical limits, time, existing architecture, team capacity, non-negotiables.

- 
- 

---

## 💡 Proposed Solution

> [!success] What are we doing and why?
> Describe the approach in enough detail that someone could implement it. Include diagrams or code snippets where helpful.



## 🔀 Alternatives Considered

> [!abstract] What else was evaluated?
> For each alternative explain what it is, why it was considered, and why it was ruled out.

### Option A — 

### Option B — 

---

## ⚖️ Tradeoffs

> [!warning] What are we giving up with the proposed solution?
> Be honest about the downsides — performance, complexity, maintainability, cost, time.

| Tradeoff | Impact | Mitigation |
| -------- | ------ | ---------- |
| | | |
| | | |

---

## ✅ Decision

> [!success] What was decided and why?
> State the final decision clearly. Reference the constraints and tradeoffs that drove it. This should be readable as a standalone summary.



### Open Questions
- 

---

## 🔗 References

> [!note] Docs, RFCs, prior art, related design docs, or external resources that informed this decision.

- 

## 🧵 Related Notes

-