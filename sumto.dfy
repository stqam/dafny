/**
   compute sum of first n natural numbers
*/
method SumUpTo (n: nat) returns (r: nat)
{
  assume(false);
}










































/*
function total (a: seq<nat>) : nat
{
  if |a| == 0 then 0
  else total (a[0..|a|-1]) + a[|a|-1]
}


method Total (a: seq<nat>) returns (r:nat)
  ensures r == total (a[0..|a|]);
{
  var i := 0;
  r := 0;
  while i < |a|
  {
    r := r + a[i];
    i := i + 1;
  }
}

*/
