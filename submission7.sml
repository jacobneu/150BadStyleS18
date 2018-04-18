(* Submitter nickname: Alonzo Church *)
(* Name of your artwork: Church Encodings *)


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
  type 'a t = ('a -> exn -> exn) -> exn -> exn
  exception Empty = Bind

  open Fn
  fun empty () = const id
  fun push x s f b = f x (s f b)
  fun pop s =
    let exception Res of 'a * 'a t
        val Res r = s (fn x =>
          fn Res (y, z) => Res (x, push y z)
           | _          => Res (x, empty ())
        ) Empty
    in r end
  fun null s =
    let exception Res of bool
        val Res r = s (const (const (Res false))) (Res true)
    in r end
end
