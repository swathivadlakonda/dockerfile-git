FROM centos
RUN yum -y install git
RUN mkdir swathivadlakonda
CMD cd swathivadlakonda
CMD gitinit
RUN git clone https://github.com/swathivadlakonda/tool.git
CMD ls
CMD git status
CMD git remote -v
CMD cat >gitfile && echo"this is dockerfile for git"
CMD cat gitfile
CMD git add .
CMD git commit -m"added file"
CMD git push origin master
CMD git log -online
CMD git show head
CMD echo "docker file of git"

