<%*
if (!tp.user || !tp.user.task_id) {
  new Notice("❌ task_id script not found. Check Templater → User Script Functions folder.");
  return;
}
const project = await tp.system.prompt("Project name (e.g. Quri)");
if (!project) return;

const currentFile = tp.file.find_tfile(tp.file.path(true));
const taskId = await tp.user.task_id(tp, project);
const title = await tp.system.prompt("Task title");
if (!title) return;

const fileName = taskId + " " + title;
const destFolder = "01 Projects/" + project + "/Tasks";

if (!app.vault.getAbstractFileByPath(destFolder)) {
  await app.vault.createFolder(destFolder);
}

await app.vault.rename(currentFile, destFolder + "/" + fileName + ".md");
-%>
---
id: <% taskId %>
title: <% title %>
class: task
tags: dev
status: backlog
priority: <% await tp.system.suggester(["🔴 High", "🟡 Medium", "🟢 Low"], ["high", "medium", "low"]) %>
points: <% await tp.system.suggester(["1 — Trivial", "2 — Small", "3 — Medium", "5 — Large", "8 — Very Large", "13 — Needs Breakdown"], ["1", "2", "3", "5", "8", "13"]) %>
milestone: 
assignee:
created: <% tp.date.now("YYYY-MM-DD") %>
done:
---

# <% taskId %> — <% title %>

## 📋 Description

> [!info] What is this task?
> Replace this with a clear, concise summary of what needs to be done and why. A good description lets someone pick this up cold and understand the goal without asking questions.



## ❓ Questions & Unknowns

> [!question] Open questions
> Jot down anything that needs clarification before or during the work. Remove entries as they get resolved.

- 

## ✅ Acceptance Criteria

> [!success] Definition of done
> Each item should be independently verifiable. When all boxes are checked, the task is complete.


## 📐 Effort

> [!note] Story points
> Points reflect complexity, not just time. If this is an 8 or 13, consider breaking it into smaller tasks first.



## 🔗 References

> [!abstract] Links & context
> Docs, Slack threads, prior art, related tasks, or anything useful for context.

- 

## 🔀 Pull Requests

> [!example] Linked PRs
> Paste GitHub PR URLs here — the GitHub Link plugin will render them as live status tags.

- 

## ⏱ Time Log

> [!tip] Log start and end times as you work. Helps with future estimation accuracy.

| Date                            | Start | End | Notes |
| ------------------------------- | ----- | --- | ----- |
| <% tp.date.now("YYYY-MM-DD") %> |       |     |       |

## 🛠 Work Notes

> [!note] Running log
> Stream of consciousness as you work — decisions made, dead ends hit, context that future-you will want.

### <% tp.date.now("YYYY-MM-DD") %>