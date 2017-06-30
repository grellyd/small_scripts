### Prints out the directories and Git branches directly below.
### Calls into each directory one level below the calling directory.
### Very handy when developing with lots of services.

DARK_BLUE='\033[11;34m'
PURPLE='\033[01;35m'
NO_COLOUR='\033[0m'

# parses the local git branch
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# pretty prints the folder name and the branch
# $1 folder name
# $2 branch name
function print_branch_info () {
  # pretty print folder name
  echo -e "$DARK_BLUE$1$NO_COLOUR: $PURPLE$2$NO_COLOUR"
}

function main {
  # for each item one level below
  for dir in *;
  do 
    # check is actually a directory
    test -d $dir || continue
    # run parse_git_branch in a subshell
    ( 
    cd $dir; 
    test -d '.git' || continue;
    print_branch_info $dir $(parse_git_branch);
    )
  done
}
main
