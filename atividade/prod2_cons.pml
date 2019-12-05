chan buffer = [4] of {int, bool, pid}

active proctype produtor1() {
  int msg = 1

    do
    ::  buffer!msg,false,_pid ->
        msg++
    ::  buffer!msg,true,_pid ->
        break
    od
}

active proctype produtor2() {
  int msg = 1

    do
    ::  buffer!msg,false,_pid ->
        msg++
    ::  buffer!msg,true,_pid ->
        break
    od
}

active proctype consumidor(){
    int msg = 0
    bool last = false
    pid p;
    do
    ::  !last ->
        buffer?msg,last,p
        printf("Recebeu %d, processo %d\n", msg, p)
    ::  else -> break
    od
}
