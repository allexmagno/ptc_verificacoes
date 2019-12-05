chan buffer = [4] of {int, bool}

active proctype produtor() {
  int msg = 1
/*
  for (x: 1..10){
    msg.cod = x
    msg.flag = (x<10)
    if
    :: buffer!msg -> printf("Enviou messagem: %d, processo: %d\n", msg.cod, msg.uid)
    fi
  }
*/

    do
    ::  buffer!msg,false ->
        msg++
    ::  buffer!msg,true ->
        break
    od
}

active proctype consumidor(){

/*
    do
    :: !msg.flag ->
       buffer?msg -> printf("Recebeu em %d: mensagem: %d, processo: %d\n", _pid,  msg.cod, msg.uid)
    //:: timeout -> break // Trata o evento timeout
    :: else -> break
    od
*/

    int msg = 0
    bool last = false

    do
    ::  !last ->
        buffer?msg,last
        printf("Recebeu %d\n", msg)
    ::  else -> break
    od
}
