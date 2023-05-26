//! 1- Whats Git & GitHub & Why U Should Learn Part 1 //
//? What Is Git And GitHub ? //
/*
-Git is Distributed Version Control System.
-Git is Free and Open Source Software.
-Github is Source for project and sources [gitlab,bitbucket].
-Github simplify using Git.
-You Can Use Git without Github.
-Git Has GUI.
*/
//?Why You Must Learn Git ? //
/*
-Devs Contribute to The same Project.
-You Can Revert changes.
-You Can collaborate to fix bugs.
-You Can Collaborate to add new features.
-You Can Solve conflicts.
-You Can Organize Features.
*/
//! 2- Whats Git & GitHub & Why U Should Learn Part 2 //

//? Words You Will Hear //
/*
-Repository (Repo is a place where all the code is stored)
-Branch (Branch is a group of code)
-Local Repo
-Remote Repo 
-Commit(snapshot or checkpoint in your local repo)
-clone[from local or Remote repo]
-push[upload local changes to remote repo]
-pull[download changes from remote repo to local repo]
-pull-request[Tell Other About Your Changes To Pull it From Local Repo To Remote Repo]
*/
//? Important Notes //
/*
-Create repo For Every Project.
-Create A new branch For every Feature or Enhancement.
-No Need To Connect To Remote Repo when Working.
-Anyone Can Push and Pull Depend on Permission.
*/
//! 3-Create Github Repository And Clone It //
/**
 * download Git Or U Can Use Cmder to Download Git
 * Create Account in Github
 * Create Repository in Github
 * make it private for your team to access
 * make it public for everyone to access
 * make README.md file for your repo => https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax
 * We Click Create Repository Button
 * clone the link for your repo
 * Open Command line 
 * git clone https://github.com/<username>/<repo-name>.git => The syntax for cloning
 * know we download the Repository from Github
*/
//! 4-Add & Resst & Commit //
/**
 * Example : I want to deliver my task
 * git status => will view the changes that I have made
 * git add * => Add all the files
 * git add [name_of_file] => to add specific files with names 
 * git reset [name_of_file] => to reset the changes in specific file
 * git commit -m "message" => to commit the changes } message Descripe the changes
 * git push => to push the changes to github
 * then we will have 1 commit 
 * if we change the files again then we will have 2 commit
 * ...etc
*/
//! 5-Push Local Changes To Remote Repository //
/**
 * git push origin main => to push the changes to github in main branch
 * git branch => to see the branchs
 * 
*/
//! 6-Pull Local Changes From Remote Repository //
/**
 * git pull origin main => to pull the changes from github in main branch
 * To Give Access To Your Repository from settings => access => collaborators => add people
 * origin => is the remote branch
 * main =>is the local branch
 * 
*/
// ! 7-Everything About Git Configurations //
/**
 * git config -l => to see all the configurations
 * git help config => to see the help
 * git config --global user.name "Your Name" => to change the name of the user
 * git config --global user.email "Your Email" => to change the email of the user
 * git config -l --show-origin => to see the origin of each configuration
 * git config --global --unset user.name => to remove the name of the user
 * git config --global  username "Adham"
 * git config --global --edit => to edit the configuration file 
*/
// ! 8-Generate And Test Github Public Key//
/**
 * ssh-keygen -t rsa -C "Your Email" => to generate the public key
 * cat ~/.ssh/id_rsa.pub => to see the public key
 * copy the public key to github => to add the public key to github
 * ssh -T git@github.com => to test the connection
 * Enter The Password for key /.ssh/id_rsa =>
 * you've sucessfully authenticated, but GitHub does not provide shell access.
*/
// ! 9-Create Repository From Existing Project//
/**
 * create repo in local directory
 * git init => to initialize the repository
 * git status => to see the status of the repository
 * git add * => to add all the files
 * git commit -m "message" => to commit the changes
 * git remote add origin https://github.com/<username>/<repo-name>.git => to add remote repository
 * git push -u origin main => to pull and push the changes
*/
// ! 10-Learn Pull Request With Real Examples//
/**
 * their is two types of pull request in github
 * 1-commit directly to the main branch 
 * 2-create a new branch for this commit and start a pull request يعنى لو انت مثلا شغال مع تيم وعايز واحد فيهم يوافق على التعديل اللى انت هتعمله 
 * فى نوعين من التعديل تعديل وانت معاك الاذونات علطول وتعديل تستنا لما حد يوافق 
*/
// ! 11-Learn  Everything about Aliases//
/**
 * git config --global alias.st status => to see the status of the repository with git st 
 * git config --global alias.br branch => to see the branchs with git br
 * git config --global alias.cm "commit -m" => to commit the changes with git cm
 * now git status = git st & git branch = git br & git commit -m = git cm
 * you can edit the alias with git config --global --edit
 * 
*/
// ! 12-Learn About Branching And Merging//
/**
 * git branch => to see the branchs 
 * git branch name => create a new branch with name 
 * git checkout name => to check out the branch
 * git checkout main => to check out the main branch
 * git branch -d name => to delete the branch if you still not make any edit
 * git checkout -b name => to create a new branch with name and check out it
 * git branch -m "name2" => to rename the branch name
 * git checkout main => to check out the main branch
 * git merge name2 => to merge the branch with name2
 * git branch -D name2 => force to delete the branch with name2
 * git push origin name2 => to push the changes to github # create pull request
 * 
*/
// ! 13-Mastering Stash Part 1.//
/**
 * Git stash is a powerful command that allows you to temporarily save changes that are not yet ready to be committed. 
 * git stash => save changes in stash without commit them
 * git stash list => list all stashes 
 * git stash pop => apply the last stash and delete it from stash list

*/
// ! 14-Mastering Stash Part 2.//
/**
 * In this part, we will learn how to work with multiple stashes and how to resolve conflicts when applying stashes.
 * git stash drop => delete the last stash 
 * git stash drop stash@{n} => delete the stash with index n
 * git stash apply => apply the last stash 
 * git stash apply stash@{n} => apply the stash with index n 
 * git stash branch branchname => create a new branch from the stash and apply it 
 * git stash save "message" => save changes with a message
 * git stash show => show the changes in the last stash
 * git stash show stash@{n} => show the changes in the stash with index n
 * git stash branch branchname stash@{n} => create a new branch from the stash withindex n and apply it
 * git stash clear => delete all stashes
 * git stash branch branchname => create a new branch from the last stash and apply it
 * git stash apply stash@{n1} && git stash branch branchname stash@{n2} => apply the stash with index n1, create a new branch from the stash with index n2, and apply it
*/
// ! 15-Restore And Clean//
/**
 * In this topic, we will learn how to restore files to a previous version and how to remove untracked files and directories from the Git repository.
 * git restore  --staged adham.txt => restore file from staged to untracked
 * git clean -n => show the untracked files anddirectories that will be removed by the clean command (dry run)
 * git clean -f => remove the untracked files and directories
 * git clean -df => remove the untracked files and directories, including the ignored ones
*/
// ! 16-Resetting The  Head//
/**
 * Git reset is a command that allows you to reset your Git repository to a previous state. It is useful when you want to undo changes or undo a commit.
 * git log => to see the log file for all commits
 * git reset --hard HEAD~1 => undo the last commit and discard the changes in the working directory
 * git reset --hard commit_hash => reset the repository to the commit with the specified hash and discard the changes in the working directory
 * git reset --soft commit_hash => reset the repository to the commit with the specified hash and keep the changes in the staging area
 * git push origin main --force => push the changes to github
*/
// ! 17-Ignoring files and Directories//
/**
 * In Git, you can ignore certain files and directories so that they are not tracked by Git. This is useful for files and directories that are generated automatically or contain sensitive information.
 * touch .gitignore  => create a file named ".gitignore" in the root directory of your repository and add the names of the files and directories that you want to ignore
 * code .gitignore => edit the ".gitignore" file
 * gitignore.io => website that generates .gitignore files based on your project's programming language, framework, and IDE
 * git add .gitignore => add the .gitignore file to the staging area
 * you can push the changes but you should use that are ignored but you will use -f or --force
*/
// ! 18-Tagging and Relasing part 1//
/**
 * Git tags are a way to mark a specific commit in your Git repository. They are useful for marking releases or important points in the development history of your project.
 * git tag => list all tags in the repository
 * git tag tagname => create a new lightweight tag with tagname on the current commit
 * git tag -a tagname -m "message" => create a new annotated tag with tagname and message on the current commit
 * git show tagname => show the details of the tag with tagname
*/
// ! 19-Tagging and Relasing part 2//
/**
 * In this topic, we will learn how to delete and push tags to a remote Git repository and how to create release notes.
 * git tag -l "v1.*" => list all tags with version 1.1 or 1.2 ...etc
 * git tag -d tagname => delete the specifi
 * git push origin --delete tagname => delete the tag
 * */

// ! 20-The End And Advices//
/**
 * In this final topic, we will summarize what we have learned and provide some advice for using Git effectively.
 * Git is a powerful tool for managing version control and collaboration in software development projects.
 * Branching and merging allow multiple developers to work on different features or versionsof the codebase simultaneously and merge their changes later.
 * Stashing is a useful feature for temporarily saving changes that are not yet ready to be committed and switching between different branches or tasks.
 * Resetting the HEAD and restoring files can help you undo changes or revert to a previous state of your Git repository.
 * Ignoring files and directories, tagging and releasing, and creating release notes can help you manage your Git repository more effectively and communicate with your team and users.
 * It is important to commit frequently and write clear commit messages, use descriptive branch and tag names, and follow best practices for collaborating and reviewing code with your team.
 * It is also useful to learn more advanced Git commands and workflows, such as rebasing, cherry-picking, and using Git hooks and aliases, to streamline your development process and avoid common mistakes and errors.
*/


