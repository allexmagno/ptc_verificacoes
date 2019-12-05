chan buffer = [4] of {int, bool}

active proctype produtor() {
  int msg = 1

    do
    ::  msg < 10 ->
        buffer!msg,false
        msg++
    ::  else ->
        buffer!msg,true
        break
    od

}

active proctype consumidor(){

    int msg, bf = 0
    bool last = false

    do
    ::  !last ->
        buffer?msg,last :assertion()
        bf = msg
        printf("Recebeu %d\n", msg)
    ::  else -> break
    od
}
