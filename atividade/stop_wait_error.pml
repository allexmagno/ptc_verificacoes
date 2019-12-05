mtype = {data, ack}

chan c1 = [1] of {mtype, bit}
chan c2 = [1] of {mtype, bit}

active proctype recv(){
    bit seq = 0    

    do
    :: c1?data -> printf("erro..\n")
    :: c1?data,eval(seq) ->
        printf("rx: recebeu data seq=%d\n", seq)
        c2!ack,seq
        seq=!seq
    :: c1?data,eval(!seq) ->
        printf("rx: recebeu data seq=%d\n", seq)
        c2!ack,!seq
    od
}

active proctype tx(){
    bit seq = 0

estado0:
    c1!data,seq

estado1:

    do
    ::c2?ack -> // simula erro
        skip
    ::c2?ack,eval(seq) -> // ack com seq correta
        seq = !seq
        goto estado0
    ::c2?ack,eval(!seq) -> // ack com seq errada
        printf("Ack errado\n")
        skip
    ::timeout -> //Nao recebeu ack.. timeout
        printf("tx: erro.. retransmitindo tout\n")
        c1!data,seq
    od

}
