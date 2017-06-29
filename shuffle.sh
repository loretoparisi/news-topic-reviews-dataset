myshuf() {
  perl -MList::Util=shuffle -e 'print shuffle(<>);' "$@";
}
cat $1 | myshuf > $2
