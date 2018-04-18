(* Submitter nickname: JCB *)

(* Submission begins HERE *)

val hi = ref 0
val lo = ref 1

signature STK = sig
  type 'a t
  exception Empty
  val empty : unit -> 'a t
  val push : 'a -> 'a t -> 'a t
  val pop : 'a t -> 'a * 'a t
  val null : 'a t -> bool
end

structure Stackd : STK = struct
  type 'a t = 'a list
  exception Empty

  fun empty () = []
  fun push a L = a::L
  fun pop L = case L of [] => raise Empty | x::xs => (x,xs)
  val null = List.null
end

val _ = use "badstyle.sml"

