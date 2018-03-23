/** find first occurrence of key in a */
method Find(a: array<int>, key: int) returns (index: int)
  requires a != null;
  ensures -1 <= index < a.Length;
  ensures 0 <= index < a.Length ==> a[index] == key;
  ensures index == -1 ==> forall x :: 0 <= x < a.Length ==> a[x] != key;
  // a before find is the same as a after find
  ensures old(a) == a;
  ensures old(a[..]) == a[..];
{
  var i := 0;
  while (i < a.Length)
    // the key is not in the first i locations of a
    invariant i <= a.Length;
    invariant forall k :: 0 <= k < i ==> a[k] != key
  {
    if (a[i] == key) { return i; }
    i := i + 1;
  }

  return -1;
}
