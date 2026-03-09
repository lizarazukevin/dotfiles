<%*
const project = await tp.system.prompt("Project name (e.g. Quri)");
if (!project) return;
const currentFile = tp.file.find_tfile(tp.file.path(true));
const destFolder = "01 Projects/" + project;
if (!app.vault.getAbstractFileByPath(destFolder)) {
  await app.vault.createFolder(destFolder);
}
await app.vault.rename(currentFile, destFolder + "/" + project + ".md");
-%>
---
class: initiative
tags: project
project: "[[<% project %>]]"
status: active
created: <% tp.date.now("YYYY-MM-DD") %>
---

# <% project %>

> [!info] What is this?
> One or two sentences — what this project is and what it does. Write it like the opening line of a press release.



---

## 🧩 Problem Statement

> [!warning] What problem does this solve?
> Describe the pain point or gap that motivated this project. Be specific — who feels this problem and how acutely?



## 👥 Target Users

> [!abstract] Who is this for?
> Describe the primary user. What do they need, what do they currently do instead, and why does this serve them better?



## 🎯 Success Metrics

> [!success] How do we know this worked?
> Define what success looks like in concrete, measurable terms. These should be revisitable as the project matures.

- 
- 
- 

---

## 🏗 Tech Stack

> [!note] Technologies, frameworks, and tools this project is built with.

| Layer | Choice | Notes |
| ----- | ------ | ----- |
| Frontend | | |
| Backend | | |
| Database | | |
| Infrastructure | | |
| Auth | | |
| Other | | |

## ☁️ Infrastructure

> [!note] Hosting, deployment, and architecture decisions.



---

## 🏁 Milestones

> [!abstract] High level phases of the project. Each milestone should represent a meaningful, shippable increment.

| Milestone | Goal | Status | Target Date |
| --------- | ---- | ------ | ----------- |
| [[M1]] | | 🔵 In Progress | |
| [[M2]] | | ⚪ Not Started | |
| [[M3]] | | ⚪ Not Started | |

---

## 🗺 Timeline & Phases

> [!tip] Rough sequencing of work. This is a living section — update it as priorities shift.



---

## 🔍 Competitor Landscape

> [!warning] What else exists in this space?
> Not to copy — to understand positioning and make deliberate choices about differentiation.

| Name | What they do | How we differ |
| ---- | ------------ | ------------- |
| | | |
| | | |

---

## 👤 Team & Roles

| Name | Role | Contact |
| ---- | ---- | ------- |
| | | |

---

## 🔗 External Links

> [!example] GitHub, docs, design files, deployments, and anything else living outside the vault.

| Resource | Link |
| -------- | ---- |
| GitHub | |
| Docs | |
| Staging | |
| Production | |

---

## 📋 Active Tasks

> [!note] Pulled from the taskboard — tasks currently in progress for this project.

```tasks
path includes 01 Projects/<% project %>/Tasks
status is not done
```

## 🌱 Seed Ideas

> [!note] Ideas associated with this project sitting in the backlog.

```dataview
LIST
FROM "00 Seeds"
WHERE project = [[<% project %>]]
SORT created DESC
```

---

## 📓 Weekly Logs

```dataview
LIST
FROM "03 Weekly"
WHERE project = [[<% project %>]]
SORT created DESC
```