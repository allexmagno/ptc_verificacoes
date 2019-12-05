typedef Mensagem {
  byte cod;
  int uid
}
 
active proctype teste() {
  Mensagem msg
 
  msg.cod = 111
  msg.uid = _pid
  printf("Mensagem: %d, %d\n", msg.cod, msg.uid)
}
