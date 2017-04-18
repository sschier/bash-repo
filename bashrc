# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#source the default t-3 setups
if [ -f /etc/bashrc_t3 ]; then
    source /etc/bashrc_t3
fi


export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
alias setupATLAS='source ${ATLAS_LOCAL_ROOT_BASE}/user/atlasLocalSetup.sh'
export SVNINST=svn+ssh://svn.cern.ch/reps/atlasinst

source ${ATLAS_LOCAL_ROOT_BASE}/user/atlasLocalSetup.sh &> /dev/null
# localSetupGcc --gccVersion=gcc472_x86_64_slc6 --quiet
# localSetupPython --pythonVersion=2.7.3-x86_64-slc6-gcc47 --quiet
# localSetupROOT --rootVersion=5.34.09-x86_64-slc6-gcc4.7 --skipConfirm --quiet &> /dev/null 

#export LD_LIBRARY_PATH=$ROOTSYS/lib:$LD_LIBRARY_PATH
#export PYTHONPATH=$ROOTSYS/pyroot:$ROOTSYS/lib:$PYTHONPATH

# User specific aliases and functions
export PYTHONSTARTUP=/export/home/sschier/pyFiles/pythonstartup.py
export PYTHONPATH=/export/home/sschier/pyFiles:$PYTHONPATH
#export PYTHONPATH=/export/home/sschier/workarea/batch_utils/python:$PYTHONPATH
#export PATH=/export/home/sschier/workarea/batch_utils:$PATH



# UCSC SVN
export CERN_USER=sschier
export SVNUCSC=svn+ssh://${CERN_USER}@svn.cern.ch/reps/atlasinst/Institutes/UCSC
export EDITOR="vim"



# my aliases
alias v='vim'
alias ki="kinit ${CERN_USER}@CERN.CH"
alias ..="cd .."
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias l1="ls -1tr"
alias ll="ls -l"
alias cw="cd $HOME/workarea"
alias cdv="cd /export/share/diskvault/sschier"
alias cdv2="cd /export/share/diskvault2/sschier"
alias cdat="cd /export/share/data/sschier"
alias cdirac="cd /export/share/dirac/sschier"
alias rmrun="rm -r run/"

#GitHub aliases
alias git-st="git status"
alias git-ci="git commit -a -m"
alias git-push="git push -u origin master" 
alias git-pull="git pull" 
alias git-add="git add"
alias git-last="git log -1 HEAD"

alias setupNumpy='lsetup "sft --cmtconfig=x86_64-slc6-gcc47-opt external/pyanalysis/1.3_python2.7,external/lapack/3.4.0,external/blas/20110419"'
