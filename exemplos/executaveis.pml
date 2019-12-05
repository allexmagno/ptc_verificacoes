chan canal1 = [1] of {int}
chan canal2 = [1] of {int}
 
active proctype p1() {
  int msg1, msg2
 
Repetir:
 
  if
  :: canal1?msg1 -> printf("Erro... \n")
  :: canal1?msg1 -> printf("Recebeu msg1=%d\n", msg1)
  :: canal2?msg2 -> printf("Recebeu msg2=%d\n", msg2)
  :: else -> 
        printf("Canais Vazios\n")
  fi
 
  goto Repetir
}

/*active proctype p2() {
  denovo:
 
  if
  :: canal1!111
  :: canal2!222
  fi
 
  goto denovo
}*/

active proctype p2() {
  do
  :: canal1!111 -> printf("enviei pelo canal1\n")
  :: canal2!222 -> printf("enviei pelo canal2\n")
  :: else ->
        printf("Canais cheios\n")
        break;
  od
}
