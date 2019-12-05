mtype = {data, ack}

chan c1 = [1] of {mtype, bit}
chan c2 = [1] of {mtype, bit}

active proctype recv(){
    bit seq = 0    

    do
//    :: c1?data -> printf("erro..\n")
    :: c1?data,eval(seq) ->
        printf("rx: recebeu data seq=%d\n", seq)
        c2!ack,seq
        seq=!seq
    od
/*
    do
    ::  c1?data,seq ->
        if 
        ::  seq == 0 ->
            printf("Receive data 0\n")
            c2!ack,0
        ::  seq == 1 ->
            printf("Receive data 1\n")
            c2!ack,1
        fi
    ::  timeout ->
        break
    od
*/
}

active proctype sender(){
    bit seq = 0
inicio:
    c1!data,seq
    c2?ack,eval(seq)
    printf("tx: enviou ack seq=%d\n", seq)
    seq=!seq
    goto inicio
/*
    do
    ::  c1!data,eval(seq) ->
        printf("Send data\nWaiting ack\n")

    :: c2?ack,seq_ack ->
        if
        ::  seq_ack == seq ->
            printf("Receive ack %d\n", seq_ack)
            seq = !seq
        :: else ->
            printf("Error receive ack %d\n", seq_ack)
        fi
    od
*/
}
