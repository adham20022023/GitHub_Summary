# Git and GitHub Learning Guide

## 1. What is Git & GitHub and Why You Should Learn (Part 1)

### What is Git and GitHub?

- Git is a Distributed Version Control System.
- Git is Free and Open Source Software.
- GitHub is a source for projects and sources (gitlab, bitbucket).
- GitHub simplifies using Git.
- You can use Git without GitHub.
- Git has a GUI.

### Why You Must Learn Git?

- Developers can contribute to the same project.
- You can revert changes.
- Collaborate to fix bugs.
- Collaborate to add new features.
- Solve conflicts.
- Organize features.

## 2. What is Git & GitHub and Why You Should Learn (Part 2)

### Words You Will Hear

- Repository (Repo is a place where all the code is stored)
- Branch (Branch is a group of code)
- Local Repo
- Remote Repo 
- Commit (snapshot or checkpoint in your local repo)
- Clone (from local or Remote repo)
- Push (upload local changes to remote repo)
- Pull (download changes from remote repo to local repo)
- Pull Request (Tell Others About Your Changes To Pull it From Local Repo To Remote Repo)

### Important Notes

- Create a repo for every project.
- Create a new branch for every feature or enhancement.
- No need to connect to remote repo when working.
- Anyone can push and pull depending on permission.

## 3. Create GitHub Repository and Clone It

1. Download Git or use Cmder to download Git.
2. Create an account on GitHub.
3. Create a repository on GitHub.
   - Make it private for your team to access.
   - Make it public for everyone to access.
4. Create a README.md file for your repo [GitHub Markdown Guide](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax).
5. Click the "Create Repository" button.
6. Clone the link for your repo.
7. Open the command line.
8. Run `git clone https://github.com/<username>/<repo-name>.git` to clone the repository.

## 4. Add, Reset, and Commit

Example: I want to deliver my task.

1. `git status` - View the changes made.
2. `git add *` - Add all files.
3. `git add [name_of_file]` - Add specific files.
4. `git reset [name_of_file]` - Reset changes in a specific file.
5. `git commit -m "message"` - Commit changes with a descriptive message.
6. `git push` - Push changes to GitHub.

Now you have 1 commit. If you change files again, you will have 2 commits, and so on.

## 5. Push Local Changes To Remote Repository

- `git push origin main` - Push changes to GitHub in the main branch.
- `git branch` - See the branches.

## 6. Pull Local Changes From Remote Repository

- `git pull origin main` - Pull changes from GitHub in the main branch.
- Give access to your repository from settings: access => collaborators => add people.
- `origin` is the remote branch.
- `main` is the local branch.

## 7. Everything About Git Configurations

- `git config -l` - See all configurations.
- `git help config` - See the help.
- `git config --global user.name "Your Name"` - Change the name of the user.
- `git config --global user.email "Your Email"` - Change the email of the user.
- `git config -l --show-origin` - See the origin of each configuration.
- `git config --global --unset user.name` - Remove the name of the user.
- `git config --global username "Adham"`
- `git config --global --edit` - Edit the configuration file.

## 8. Generate And Test GitHub Public Key

1. `ssh-keygen -t rsa -C "Your Email"` - Generate the public key.
2. `cat ~/.ssh/id_rsa.pub` - See the public key.
3. Copy the public key to GitHub to add it.
4. `ssh -T git@github.com` - Test the connection.
5. Enter the password for the key (`/.ssh/id_rsa`).
6. You've successfully authenticated, but GitHub does not provide shell access.

## 9. Create Repository From Existing Project

1. Create a repo in a local directory.
2. `git init` - Initialize the repository.
3. `git status` - See the status of the repository.
4. `git add *` - Add all files.
5. `git commit -m "message"` - Commit the changes.
6. `git remote add origin https://github.com/<username>/<repo-name>.git` - Add remote repository.
7. `git push -u origin main` - Pull and push the changes.

## 10. Learn Pull Request With Real Examples

There are two types of pull requests in GitHub:

1. Commit directly to the main branch.
2. Create a new branch for this commit and start a pull request.

## 11. Learn Everything About Aliases

- `git config --global alias.st status` - See the status of the repository with `git st`.
- `git config --global alias.br branch` - See the branches with `git br`.
- `git config --global alias.cm "commit -m"` - Commit changes with `git cm`.
- `git status = git st`
- `git branch = git br`
- `git commit -m = git cm`
- Edit the alias with `git config --global --edit`.

## 12. Learn About Branching And Merging

- `git branch` - See the branches.
- `git branch name` - Create a new branch with a name.
- `git checkout name` - Check out the branch.
- `git checkout main` - Check out the main branch.
- `git branch -d name` - Delete the branch (if you still not make any edit).
- `git checkout -b name` - Create a new branch with a name and check it out.
- `git branch -m "name2"` - Rename the branch name.
- `git checkout main` - Check out the main branch.
- `git merge name2` - Merge the branch with name2.
- `git branch -D name2` - Force delete the branch with name2.
- `git push origin name2` - Push changes to GitHub # create pull request.

## 13. Mastering Stash Part 1

- Git stash is a powerful command that allows you to temporarily save changes that are not yet ready to be committed.
- `git stash` - Save changes in stash without committing them.
- `git stash list` - List all stashes.
- `git stash pop` - Apply the last stash and delete it from stash list.

## 14. Mastering Stash Part 2

In this part, we will learn how to work with multiple stashes and how to resolve conflicts when applying stashes.

- `git stash drop` - Delete the last stash.
- `git stash drop stash@{n}` - Delete the stash with index n.
- `git stash apply` - Apply the

 last stash.
- `git stash apply stash@{n}` - Apply the stash with index n.
- `git stash branch branchname` - Create a new branch from the stash and apply it.
- `git stash save "message"` - Save changes with a message.
- `git stash show` - Show the changes in the last stash.
- `git stash show stash@{n}` - Show the changes in the stash with index n.
- `git stash branch branchname stash@{n}` - Create a new branch from the stash with index n and apply it.
- `git stash clear` - Delete all stashes.
- `git stash branch branchname` - Create a new branch from the last stash and apply it.
- `git stash apply stash@{n1} && git stash branch branchname stash@{n2}` - Apply the stash with index n1, create a new branch from the stash with index n2, and apply it.

## 15. Restore And Clean

In this topic, we will learn how to restore files to a previous version and how to remove untracked files and directories from the Git repository.

- `git restore --staged adham.txt` - Restore a file from staged to untracked.
- `git clean -n` - Show the untracked files and directories that will be removed by the clean command (dry run).
- `git clean -f` - Remove the untracked files and directories.
- `git clean -df` - Remove the untracked files and directories, including the ignored ones.

## 16. Resetting The Head

Git reset is a command that allows you to reset your Git repository to a previous state. It is useful when you want to undo changes or undo a commit.

- `git log` - See the log file for all commits.
- `git reset --hard HEAD~1` - Undo the last commit and discard the changes in the working directory.
- `git reset --hard commit_hash` - Reset the repository to the commit with the specified hash and discard the changes in the working directory.
- `git reset --soft commit_hash` - Reset the repository to the commit with the specified hash and keep the changes in the staging area.
- `git push origin main --force` - Push the changes to GitHub.

## 17. Ignoring Files and Directories

In Git, you can ignore certain files and directories so that they are not tracked by Git. This is useful for files and directories that are generated automatically or contain sensitive information.

- `touch .gitignore` - Create a file named ".gitignore" in the root directory of your repository and add the names of the files and directories that you want to ignore.
- `code .gitignore` - Edit the ".gitignore" file.
- [gitignore.io](https://www.gitignore.io) - Website that generates .gitignore files based on your project's programming language, framework, and IDE.
- `git add .gitignore` - Add the .gitignore file to the staging area.
- You can push the changes, but you should use -f or --force for files that are ignored.

## 18. Tagging and Releasing Part 1

Git tags are a way to mark a specific commit in your Git repository. They are useful for marking releases or important points in the development history of your project.

- `git tag` - List all tags in the repository.
- `git tag tagname` - Create a new lightweight tag with tagname on the current commit.
- `git tag -a tagname -m "message"` - Create a new annotated tag with tagname and message on the current commit.
- `git show tagname` - Show the details of the tag with tagname.

## 19. Tagging and Releasing Part 2

In this topic, we will learn how to delete and push tags to a remote Git repository and how to create release notes.

- `git tag -l "v1.*"` - List all tags with version 1.1 or 1.2, etc.
- `git tag -d tagname` - Delete the specified tag.
- `git push origin --delete tagname` - Delete the tag.

## 20. The End And Advice

In this final topic, we have summarized what we have learned and provided some advice for using Git effectively.

- Git is a powerful tool for managing version control and collaboration in software development projects.
- Branching and merging allow multiple developers to work on different features or versions of the codebase simultaneously and merge their changes later.
- Stashing is a useful feature for temporarily saving changes that are not yet ready to be committed and switching between different branches or tasks.
- Resetting the HEAD and restoring files can help you undo changes or revert to a previous state of your Git repository.
- Ignoring files and directories, tagging and releasing, and creating release notes can help you manage your Git repository more effectively and communicate with your team and users.
- It is important to commit frequently and write clear commit messages, use descriptive branch and tag names, and follow best practices for collaborating and reviewing code with your team.
- It is also useful to learn more advanced Git commands and workflows, such as rebasing, cherry-picking, and using Git hooks and aliases, to streamline your development process and avoid common mistakes and errors.