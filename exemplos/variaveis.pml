mtype = {ack, nak, err}
 
active proctype hello() {
  int x;
  pid p;
  mtype m = ack
 
  p = _pid;
  x = x + 1;
  printf("hello world: meu id é %d e x=%d\n", p, x)
  printf("... e m=")
  printm(m)
  printf("\n")
}
