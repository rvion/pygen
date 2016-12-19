#!/usr/local/bin/zsh

if [ -z "$dev" ]; then echo "dev is unset"; exit; else echo "root is '$dev'"; fi
if [[ $# -eq 0 ]] ; then
    echo 'usage: pygen projectname'
    exit 0
fi


# echo ensure early termiation if error..
# set -eu



echo ensure gloabl virtualenvs are created..
mkdir -p $dev/virtualenvs

global3=$dev/virtualenvs/global-python3
global2=$dev/virtualenvs/global-python2

if [ ! -d "${global2}" ]; then
  virtualenv ${global2}
fi

if [ ! -d "${global3}" ]; then
  virtualenv -p python3 ${global3}
fi



echo ensure scaffold is installed..
source ${global2}/bin/activate
pip install scaffold



echo generate project..
pjname=$1
pyscaffold -p "${pjname}" -d $dev

dir3=$dev/virtualenvs/${pjname}-python3
dir2=$dev/virtualenvs/${pjname}-python2

if [ ! -d "${dir2}" ]; then
  virtualenv ${dir2}
fi

if [ ! -d "${dir3}" ]; then
  virtualenv -p python3 ${dir3}
fi


echo go to project folder..
source $dev/virtualenvs/${pjname}-python3/bin/activate
echo \# ${pjname} > $dev/${pjname}/readme.md
cd $dev/${pjname}
git init


echo done
