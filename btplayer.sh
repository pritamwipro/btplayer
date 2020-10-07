# this script clones a repository, including all its remote branches
# Author: Deeptanu Sarkar & Pritam Ghosh

GIT=`which git`

if [ "x$1" = "x"];then
  echo "use: <home_directory>"
  exit 1
fi

if [ "x$GIT" = "x" ];then
  echo "No git command found. install it"
fi

function clone {

  $GIT clone -q $1 $2
  res=$?

  cd $2

  $GIT pull --all

  for remote in `$GIT branch -r | grep -v \>`; do
     $GIT branch --track ${remote#origin/} $remote;
  done
}

echo "cloning repository into ... ${btplayerdir}"
clone "https://gitlab.tools.btcsp.co.uk/tv/youview-btplayer.git" ${btplayerdir}