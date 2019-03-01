#~/bin/sh
rsync -rPz --exclude ".git/" --exclude "*.sh" ~/Developer/dotfiles/ ~
