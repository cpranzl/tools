#!/bin/bash

git filter-branch --env-filter '
        oldname="Christoph Pranzl"
        oldemail="christoph.pranzl@fasolt.net"
        newname="Christoph Pranzl"
        newemail="christoph.pranzl@pranzl.net"
        [ "$GIT_AUTHOR_EMAIL"="$oldemail" ] && GIT_AUTHOR_EMAIL="$newemail"
        [ "$GIT_COMMITTER_EMAIL"="$oldemail" ] && GIT_COMMITTER_EMAIL="$newemail"
        [ "$GIT_AUTHOR_NAME"="$oldname" ] && GIT_AUTHOR_NAME="$newname"
        [ "$GIT_COMMITTER_NAME"="$oldname" ] && GIT_COMMITTER_NAME="$newname"
        ' HEAD

