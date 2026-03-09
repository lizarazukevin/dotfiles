<%*
const project = await tp.system.prompt("Project (e.g. Quri)");
if (!project) return;
const milestone = await tp.system.prompt("Milestone (e.g. M1)");
if (!milestone) return;
const title = await tp.system.prompt("Milestone title (e.g. Foundation)");
if (!title) return;
const currentFile = tp.file.find_tfile(tp.file.path(true));
const destFolder = "04 Business/" + project;
if (!app.vault.getAbstractFileByPath(destFolder)) {
  await app.vault.createFolder(destFolder);
}
const fileName = milestone + " — " + title;
await app.vault.rename(currentFile, destFolder + "/" + fileName + ".md");
-%>
---
class: milestone
tags: business
project: "[[<% project %>]]"
milestone: <% milestone %>
status: not-started
created: <% tp.date.now("YYYY-MM-DD") %>
target-date: 
---

# <% milestone %> — <% title %>

> [!info] What is this milestone?
> A one or two sentence summary of what this milestone represents and what state the project is in when it's complete.



---

## 🎯 Goals

> [!success] What does done look like for this milestone?
> These are the outcomes, not the tasks. A milestone is complete when all of these are true.

- 
- 
- 

## 🚫 Out of Scope

> [!warning] What is explicitly not being done in this milestone?
> Helps prevent scope creep and sets clear expectations.

- 
- 

---

## 📋 Phases & Work

> [!note] Break the milestone into logical phases or chunks of work. Link to tasks where applicable.

| Phase | Description | Tasks | Status |
| ----- | ----------- | ----- | ------ |
| | | | ⚪ Not Started |
| | | | ⚪ Not Started |
| | | | ⚪ Not Started |

---

## 🔗 Dependencies

> [!warning] What needs to be true or done before this milestone can complete?

| Dependency | Type | Owner | Status |
| ---------- | ---- | ----- | ------ |
| | External | | |
| | Internal | | |

---

## ✅ Exit Criteria

> [!success] The specific, verifiable conditions that must be met to call this milestone done.

-  
-  
- 

---

## ⚠️ Risks

> [!warning] What could derail or delay this milestone?

| Risk | Likelihood | Impact | Mitigation |
| ---- | ---------- | ------ | ---------- |
| | | | |
| | | | |

---

## 📓 Notes & Decisions

> [!note] Running log of decisions made and context worth preserving during this milestone.

### <% tp.date.now("YYYY-MM-DD") %>

---

## 🔗 Related

- **Initiative:** [[<% project %>]]
- **Design Docs:** 
- **Tasks:**