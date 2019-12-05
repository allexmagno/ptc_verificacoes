int count;
bool incr;
 
active proctype counter() {
  do
  :: incr && count < 10 -> 
   critical: count++
    incr = false
  :: count == 10 -> count = 0
  od
}
 
active proctype env() {
  do
  :: !incr -> 
    critical:incr = true
  od
}

ltl f1 { <> (count == 10) }
ltl f2 { []<> (count == 10) }
ltl f3 { [] (counter@critical -> <> !counter@critical) && [](env@critical -> <> !env@critical)}
