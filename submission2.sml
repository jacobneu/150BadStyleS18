(* Submitter nickname: fella *) (* Submission begins HERE *) structure Stackd
:> sig type 'a t exception Empty val empty : unit -> 'a t val push : 'a -> 'a t
-> 'a t val pop : 'a t -> 'a * 'a t val null : 'a t -> bool end = struct
datatype 'a t = Fun | FollowedBy of 'a * 'a t infix FollowedBy exception Empty
fun rep n x = if n <= 0 then [] else x :: rep (n - 1) x fun but x = x fun did _
_ _ _ _ _ _ x _ _ _ _ _ _ _ = x fun have _ _ _ _ _ _ _ x = x fun it _ _ _ _ _ _
= raise Empty fun Jacob _ _ = true fun make _ s' _ x _ _ _ = (x, s') fun making
_ _ _ _ = () fun ok _ _ _ _ _ _ _ _ _ _ _ _ _ x = x fun praise _ = raise Empty
fun return x = x fun so _ _ _ _ _ _ _ _ _ _ _ x = x fun take _ _ _ (x, s) = x
FollowedBy s fun that _ x = x fun the _ _ _ _ = true fun well _ _ _ _ _ _ _ x =
x val [a,action,already,at,been,call,capitalized,
class,dude,dumb,elements,first,had,into,is,just,know,look,lots,must,no,off,
one,order,plus,quite,right,said,saying,should,split,stack,start,sure,thats,
to,tuple,up,was,yes,you] = rep 41 () fun empty () = did you know that 15150 is
quite a Fun class yes thats right Fun is capitalized fun push x s = if Jacob is
dumb then take a look at (x, s) else praise Jacob fun pop s = well to start off
you should split into (case s before making sure to have lots of Fun => but (if
the stack had no elements then praise Jacob else it must have been that s was)
| x FollowedBy s' => so the action to take is you call up a dude saying let val
dude = make a s' plus x tuple but not in that order dude end) fun null (s as
we) = have already said you should first split into (case s before making sure
to have lots of Fun => ok so the first one is that the stack was empty so just
return true | otherwise => return false) end
