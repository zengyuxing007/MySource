myip()
{
    curl -s http://checkip.dyndns.org/ | grep -o "[[:digit:].]\+"
}   

gitbrachactive()
{
    for k in `git branch|sed s/^..//`;do echo -e `git log -1 --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" "$k"`\\t"$k";done|sort
}

#alias cs
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''
