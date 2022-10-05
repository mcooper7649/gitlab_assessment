## Feature-Branch-Breakdown

![example](https://img001.prntscr.com/file/img001/SULjvGfmTa6M2QWFIItJAA.png)

In this article I will explain how we can achieve the example above using some common git commands.

At a closer look of the image above, we can see that we have two branches total, main and feature branch.

Initially, we can see our main branch had two commits.
For the first commit, this sequence of commands was used:

**First Commit Command Sequence**

```
git init  // Initialize local git repo in current working directory

git add *   //Adds ALL files and saved changes to git staging in current working directory

git commit -m 'first commit' // Creates a local commit with current staged changes, with the message 'first commit'
```

- For our Second commit the command sequence is a simple add & commit, this sequence of commands was used:

**Second Commit Command Sequence**

```
$git add *   //Adds ALL new files and new saved changes to git staging in current working directory and subdirectories

$git commit -m 'second commit' // Creates a local commit with current staged changes, with the message 'second commit'

```

- Branches in Git are incredibly lightweight as well. They are simply pointers to a specific commit -- nothing more. This is why many Git enthusiasts chant the mantra:

_branch early, and branch often_

- For our next commit, we first need to create a feature-branch.
  > A feature branch is typically used in development is parallel with your main release branch, as it lets you create and test changes without impacting production.

**Feature Branch Command Sequence**

```
$git checkout -b feature-branch // This shorthand command creates feature-branch if it doesn't already exist and also switches to the branch automatically, which was our next step

$git add *   //Adds ALL new files and new saved changes to git staging for feature-branch in current working directory and subdirectories

$git commit -m 'awesome feature' // Creates a local commit with current staged changes of feature-branch , with the message 'awesome feature'

```

- Before we merge our feature-branch we can want to create another commit to our main branch. So we will want to switch to main first, make our changes, commit, and then merge.
- While this sounds like a complicated sequence it can be easily done as follows:

**Third Commit Command Sequence**

```
git checkout main // This switches back to the main branch. Back to second commit

//Developer makes codebase changes on main branch

$git add *   //Adds ALL new files and new saved changes to git staging for main branch in current working directory and subdirectories

$git commit -m 'third commit' // Creates a local commit with current staged changes, with the message 'third commit'

$git merge feature-branch // This merges feature-branch into the receiving branch, aka the branch your currently on.

$git branch -d feature-branch // *Optional* Deletes old branch.

```

- For our final and most recent commit, the HEAD. The command sequence is as follows:

**Fourth Commit Command Sequence**

```
//Developer makes codebase changes on main branch

$git add *   //Adds ALL new files and new saved changes to git staging for main branch in current working directory and subdirectories

$git commit -m 'fourth commit' // Creates a local commit with current staged changes, with the message 'fourth commit' and it is the final and most recent commit in this repo.
```
