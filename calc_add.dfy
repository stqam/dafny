function add (x: nat, y: nat): nat
{
  if (y == 0) then x
  else add (x, y-1) + 1
}








































lemma zero_add_lemma (x: nat)
  ensures add (0, x) == x
{
  assume (false);
}

lemma add_zero_lemma (x: nat)
  ensures add (x, 0) == x
{
  assume (false);
}

lemma add_plus_one (x: nat, y: nat)
  ensures add(x, y) + 1 == add(x, y+1);
{
  assume(false);
}


lemma one_plus_add (x: nat, y: nat)
  ensures add(x, y) + 1 == add (x+1, y)
{
  assume(false);
}



lemma add_comm_lemma (x: nat, y: nat)
  ensures add (x, y) == add (y, x);
{
  assume (false);
}
