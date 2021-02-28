Useful Aliases
==============

Useful aliases for shell, git etc.

shell
-----

.. code::

    alias gs="git status"
    alias gmc="git merge --continue"

    alias gbv="git branch -vv"
    alias gbrv="git branch -rv"
    alias gbm="git branch -m"

    alias glgo="git log --oneline --stat --decorate"
    alias glgf="git log --format=fuller"

    alias gam="git am"
    alias gama="git am --abort"
    alias gamc="git am --continue"
    alias gamscp="git am --show-current-patch"

    alias greva="git revert --abort"
    alias grevc="git revert --continue"

    alias grbscp="git rebase --show-current-patch"
    alias grbe="git rebase --edit-todo"
    alias grbcn="git rebase --continue --no-edit"
    alias grbis="git rebase -i --exec 'git commit --amend -s --no-edit'"

    alias gstlp="git stash list -p"

    alias gcps="git cherry-pick --skip"
    alias gcpcn="git cherry-pick --continue --no-edit"

    alias gdni="git diff --no-index"

    alias gfp="git format-patch"

    alias grho='git reset --hard origin/$(git_current_branch)'
    alias grhk="git reset --keep"

gitconfig
---------

.. code::

    [alias]
        # from http://gggritso.com/human-git-aliases
        unstage = reset -q HEAD --
        discard = checkout --
        uncommit = reset --mixed HEAD~
        append = commit --amend --no-edit
        precommit = diff --cached --diff-algorithm=minimal -w
        remotes = remote -vvv

        # listing
        graph = log --graph -20 --branches --remotes --tags  --format=format:'%Cgreen%h %Creset• %<(75,trunc)%s (%cN, %cr) %Cred%d' --topo-order
        graphall = log --graph --branches --remotes --tags  --format=format:'%Cgreen%h %Creset• %<(75,trunc)%s (%cN, %cr) %Cred%d' --topo-order
        branches = branch -a
        tags = tag -l
        unmerged = diff --name-only --diff-filter=U
        stashes = stash list

        # own
        aliases = config --get-regexp alias
        currentbranch = rev-parse --abbrev-ref HEAD
        id = rev-parse --short HEAD
        recent = branch --sort committerdate -v

        # shorthands
        s = status
        co = checkout
        cc = commit
        cp = cherry-pick
        aa = add -u
        who = shortlog -n -s --no-merges
        cl = clean -df
