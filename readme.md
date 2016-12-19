## pygen: quick script to scaffold python projects

:warning: -> quick and dirty, nothing to reuse here

```
ln -s $(pwd)/pygen.sh /usr/local/bin/pygen
```


```
pygen  fooooo
ensure early termiation if error..
ensure gloabl virtualenvs are created..
ensure scaffold is installed..
Requirement already satisfied: scaffold in /Users/rvion/dev/virtualenvs/global-python2/lib/python2.7/site-packages
Requirement already satisfied: nose in /Users/rvion/dev/virtualenvs/global-python2/lib/python2.7/site-packages (from scaffold)
generate project..
create:  /Users/rvion/dev/fooooo
create:  +++ /Users/rvion/dev/fooooo/fooooo
create:  +++ /Users/rvion/dev/fooooo/bin
create:  +++ /Users/rvion/dev/fooooo/tests
create:  +++ /Users/rvion/dev/fooooo/docs
create:  +++ /Users/rvion/dev/fooooo/setup.py
create:  ++++++ /Users/rvion/dev/fooooo/tests/__init__.py
create:  ++++++ /Users/rvion/dev/fooooo/fooooo/__init__.py
create:  ++++++ /Users/rvion/dev/fooooo/tests/fooooo_tests.py
New python executable in /Users/rvion/dev/virtualenvs/fooooo-python2/bin/python
Installing setuptools, pip, wheel...done.
Running virtualenv with interpreter /usr/local/bin/python3
Using base prefix '/usr/local/Cellar/python3/3.5.2_1/Frameworks/Python.framework/Versions/3.5'
New python executable in /Users/rvion/dev/virtualenvs/fooooo-python3/bin/python3.5
Also creating executable in /Users/rvion/dev/virtualenvs/fooooo-python3/bin/python
Installing setuptools, pip, wheel...done.
go to project folder..
Initialized empty Git repository in /Users/rvion/dev/fooooo/.git/
done
```
