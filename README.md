# OnTheWay 分支的建立及上传

一、创建分支，并切换到cff 分支：
$ git checkout -b cff
Switched to a new branch 'cff'

git checkout命令加上-b参数表示创建并切换，相当于以下两条命令：
$ git branch dev
$ git checkout dev
Switched to branch 'dev'

二、查看当前分支：
$ git branch
* cff
  dev
  master
git branch命令会列出所有分支，当前分支前面会标一个*号。

三、我们就可以在cff分支上正常提交，比如对test.txt做个修改，加上一行：

this is a test
然后提交：
$ git add test.txt

$ git commit -m "commit 1cff"
[cff 423c61f] commit 1cff
 1 file changed, 2 insertions(+), 1 deletion(-)
 
四、上传到远程仓库：
$ git push -u origin cff
Enumerating objects: 26, done.
Counting objects: 100% (26/26), done.
Delta compression using up to 4 threads.
Compressing objects: 100% (20/20), done.
Writing objects: 100% (26/26), 7.51 KiB | 1.07 MiB/s, done.
Total 26 (delta 7), reused 0 (delta 0)
remote: Resolving deltas: 100% (7/7), done.
remote:
remote: Create a pull request for 'cff' on GitHub by visiting:
remote:      https://github.com/laoxuai/c3p0/pull/new/cff
remote:
To github.com:laoxuai/c3p0.git
 * [new branch]      cff -> cff
Branch 'cff' set up to track remote branch 'cff' from 'origin'.

关于上传：
1、先初始化
  $ git init
  Reinitialized existing Git repository in E:/GitHubtest/test/OnTheWay/.git/
2、添加文件——查看文件
  $ git add .
  $ ls
'a test'   JspStudy.war   test.txt                获取客户端信息.jsp
 a1.js     one            VerificationCode.java
$ git add test.txt

3、添加文件——到库
$ git remote add origin git@github.com:laoxuai/c3p0.git
oorigin后面的为库的链接，若添加是出现以下错误
fatal: remote origin already exists.

解决办法如下： 
1、先删除远程 Git 仓库
$ git remote rm origin

2、再添加远程 Git 仓库
$ git remote add origin git@github.com:laoxuai/c3p0.git

如果执行 git remote rm origin 报错的话，我们可以手动修改gitconfig文件的内容
把[remote “origin”]删除即可

4、重复上面1,2,3，然后在上传进行四步骤即可在目标仓库上传好。


