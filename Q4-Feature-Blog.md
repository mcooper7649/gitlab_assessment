### GitLab has hired you to write a Git tutorial for beginners on: Using Git to implement a new feature/change without affecting the main branch

_In your own words, write a tutorial/blog explaining things in a beginner-friendly way. Make sure to address both the "why" and "how" for each Git command you use. Assume the audience are readers of a well-known blog._

---

Git can be confusing at times and in this article I want to explain how we can create a new branch or feature without affecting the main branch.

Branching with Git is the typically done to create new features or experiment in your project without affecting the main branch.

```
#check the available branches on the local repository
$ git branch

#create a new branch called newfeature on your local repository
$ git branch newfeature

#confirm the new branch has been created
$ git branch

#switch from master branch to the new branch created
$ git checkout newfeature

#shorthand to create new branch and switch
$ git checkout -b newFeature
```

Once we have switched to the new branch we can make modifcations to the code aka create our new feature.

Next we will add our files to staging and commit.

```
#to check all our untracked files and changes
$ git status

#to track all changes made
$ git add .

#to track only a single file
$ git add test.txt

#to save changes made to the local repository
$ git commit -m "commit message"
```

CONGRATULATIONS 🎉 . You have successfully created a new feature on a new branch without affecting the main branch.

[Source](https://computingforgeeks.com/implement-new-feature-in-git-without-affecting-master-branch/#:~:text=Create%20a%20New%20Branch,messing%20up%20the%20original%20code.)
