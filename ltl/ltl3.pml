int n=7
 
active proctype teste() {
  do
  :: n > 0 -> n--
  :: n < 5 -> n++
  od
}

ltl f1 { n == 7 }
ltl f2 { n == 5 }
ltl f3 { [] (n==7) }
ltl f4 { [] (n>=0) }
ltl f5 { <> (n==7) }
ltl f6 { <> (n==5) }
ltl f7 { <> (n==0) }
ltl f8 { []<> (n!=0) }
ltl f9 { []<> (n==5) }
ltl f10 { <>[] (n<5) }
ltl f11 { <>[] (n<6) }
