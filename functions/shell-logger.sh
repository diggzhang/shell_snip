function log_msg {
  echo "[`date '+ %F %T'` ]: $@"
}

log_msg "This is one logger message"
