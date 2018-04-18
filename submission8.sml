(* Submitter nickname: Unsure Casual Guy *)
(* Name of your artwork: SML is Plain English *)


(* Submission begins HERE *)

structure Stackd :>
  sig
    type 'a t
    exception Empty
    val empty : unit -> 'a t
    val push : 'a -> 'a t -> 'a t
    val pop : 'a t -> 'a * 'a t
    val null : 'a t -> bool
  end =
struct
  type 'a t = 'a list
  exception Empty = List.Empty

  infix 0 that

  fun put it on = it::on

  fun things that happen = things

  val i = fn x => x
  val (really, know, guess, ll, `, return, ok, right, don, s, t, well, some, the, but, about, bad, a, want, to, thing) =
    (i, i, i, i, i, i, i, i, i, i, i, i, i, i, i, i, i, i, i, i, i)

  fun empty () =
    i guess i`ll return nil that`s ok right

  fun push stuff on =
    (i don`t really know; i guess put stuff on that thing really well)

  fun pop thing =
    (i want to return the hd thing, but i don`t know about the tl thing)

  fun null is =
    i know about a List.
    null is that really bad thing
end
