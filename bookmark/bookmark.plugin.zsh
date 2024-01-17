
## Section: Bookmark support for bash
# choos one bookmark from bookmark repos
set_bookmark(){

  local bookmark_dir=~/.bookmarks
  [[ -d "$bookmark_dir" ]] || mkdir -p "$bookmark_dir"

  if [[ ! -z "$1" ]];then
    # User assigned session
    local session=$1 
  else
    # Use default session
    local session="default"
  fi
  
  export bookmark="$bookmark_dir/$session"
  touch $bookmark
}

unset_bookmark(){
  rm -f $bookmark
  unset bookmark
}

# Show current bookmark
function l(){
  case $1 in
    "-a")
      shift
      echo $* >> $bookmark
      ;;
    "-d")
        if sed --version >/dev/null 2&>1;
        then
            # GNU sed args
            sed -i "$2d" $bookmark
        else
            # BSD sed args
            sed -i '' "$2d" $bookmark
        fi
      ;;
    "-h")
      echo " l -a dir #Append dir to book mark"
      echo " l -d no  #Del ${no}th from bookmark "
      echo " l        #List bookmark"
      ;;
  esac
  cat -n $bookmark
}

# Change to selected dir in bookmark
function c(){
  local no=$1
  cd "$(sed -n "${no}p" $bookmark)"
}
set_bookmark
