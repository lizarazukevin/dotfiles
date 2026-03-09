<%*
const project = await tp.system.prompt("Project (e.g. Quri)");
if (!project) return;
const milestone = await tp.system.prompt("Milestone (e.g. M1)");
if (!milestone) return;
const date = tp.date.now("YYYYMMDD");
const week = tp.date.now("[W]WW");
const fileName = date + "-" + week + "-" + milestone;
const destFolder = "03 Weekly";
const currentFile = tp.file.find_tfile(tp.file.path(true));
if (!app.vault.getAbstractFileByPath(destFolder)) {
  await app.vault.createFolder(destFolder);
}
await app.vault.rename(currentFile, destFolder + "/" + fileName + ".md");
-%>
---
class: weekly
tags: dev
project: "[[<% project %>]]"
milestone: "[[<% milestone %>]]"
week: <% tp.date.now("YYYY-[W]WW") %>
created: <% tp.date.now("YYYY-MM-DD") %>
total-hours: 
---

# 🗓 Dev Log — Week <% tp.date.now("[W]WW · YYYY") %>
> `<% moment(tp.file.creation_date("YYYY-MM-DD")).isoWeekday(1).format("MMM DD") %>` → `<% moment(tp.file.creation_date("YYYY-MM-DD")).isoWeekday(5).format("MMM DD") %>`

> [!info] Weekly Intentions
> What does a successful week look like? List the outcomes you want to have achieved by Friday — not a task list, but the goals that matter.

- 
- 
- 

---

## 📅 Monday · <% moment(tp.file.creation_date("YYYY-MM-DD")).isoWeekday(1).format("MMM DD") %>

| Hours | Notes |
| ----- | ----- |
|       |       |

### 🛠 Worked On
- 

### 🧠 Problems & Blockers

> [!question] Anything slowing you down or unresolved?

- 

### 💡 Ideas & Notes
- 

### 🔜 Carry Forward
- 

---

## 📅 Tuesday · <% moment(tp.file.creation_date("YYYY-MM-DD")).isoWeekday(2).format("MMM DD") %>

| Hours | Notes |
| ----- | ----- |
|       |       |

### 🛠 Worked On
- 

### 🧠 Problems & Blockers

> [!question] Anything slowing you down or unresolved?

- 

### 💡 Ideas & Notes
- 

### 🔜 Carry Forward
- 

---

## 📅 Wednesday · <% moment(tp.file.creation_date("YYYY-MM-DD")).isoWeekday(3).format("MMM DD") %>

| Hours | Notes |
| ----- | ----- |
|       |       |

### 🛠 Worked On
- 

### 🧠 Problems & Blockers

> [!question] Anything slowing you down or unresolved?

- 

### 💡 Ideas & Notes
- 

### 🔜 Carry Forward
- 

---

## 📅 Thursday · <% moment(tp.file.creation_date("YYYY-MM-DD")).isoWeekday(4).format("MMM DD") %>

| Hours | Notes |
| ----- | ----- |
|       |       |

### 🛠 Worked On
- 

### 🧠 Problems & Blockers

> [!question] Anything slowing you down or unresolved?

- 

### 💡 Ideas & Notes
- 

### 🔜 Carry Forward
- 

---

## 📅 Friday · <% moment(tp.file.creation_date("YYYY-MM-DD")).isoWeekday(5).format("MMM DD") %>

| Hours | Notes |
| ----- | ----- |
|       |       |

### 🛠 Worked On
- 

### 🧠 Problems & Blockers

> [!question] Anything slowing you down or unresolved?

- 

### 💡 Ideas & Notes
- 

### 🔜 Carry Forward
- 

---

## 🔁 Weekly Retrospective

> [!success] What went well?
> 

> [!warning] What slowed me down?
> 

> [!failure] What did I not finish?
> 

> [!question] What would I do differently?
> 

---

## 📈 Progress Toward Project

> [!abstract] Where does the project stand after this week? Note any milestone progress — M1, M2, etc.

### Milestones Hit
- 

### Still Outstanding
- 

---

## 🔗 Linked Tasks & Notes
- 

## 🔀 PRs This Week
- 

---

> [!tip]- 🧭 Next Week's Focus
> - 
> - 
> - 