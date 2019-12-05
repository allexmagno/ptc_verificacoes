int n=7
 
active proctype teste() {
  do
  :: n > 0 -> n--
  :: n < 5 -> n++
  od
}

ltl f1 {  (n > 5) U (n <= 5) }
ltl f2 { (n > 5) U (n == 5) }
