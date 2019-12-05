proctype hello(){
    printf("hello world: meu id é %d\n", _pid)
}
active proctype hello2(){
    printf("hello world2: meu id é %d\n", _pid)
    run hello()
    printf("hello world3: meu id é %d\n", _pid)
}
