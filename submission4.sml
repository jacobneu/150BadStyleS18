(* Submitter nickname: B@53C@53 *)
(* Name of your artwork (optional): I generated this code using a python script
                                    but I think writing the python script 
                                    took longer than just typing the code would
                                    have RIP. *)


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

  exception Empty

  fun empty u = 
    case u of
      () => []

  fun push item stack =
    case stack of
      [] => item :: []
    | x0 :: [] => item :: x0 :: []
    | x1 :: x0 :: [] => item :: x1 :: x0 :: []
    | x2 :: x1 :: x0 :: [] => item :: x2 :: x1 :: x0 :: []
    | x3 :: x2 :: x1 :: x0 :: [] => item :: x3 :: x2 :: x1 :: x0 :: []
    | x4 :: x3 :: x2 :: x1 :: x0 :: [] => item :: x4 :: x3 :: x2 :: x1 :: x0 :: []
    | x5 :: x4 :: x3 :: x2 :: x1 :: x0 :: [] => item :: x5 :: x4 :: x3 :: x2 :: x1 :: x0 :: []
    | x6 :: x5 :: x4 :: x3 :: x2 :: x1 :: x0 :: [] => item :: x6 :: x5 :: x4 :: x3 :: x2 :: x1 :: x0 :: []
    | _ => raise Fail "omg Jacob you told me there would be max 7 items in the stack"

  fun pop stack =
    case stack of
      [] => raise Empty
    | x0 :: [] => x0
    | x1 :: x0 :: [] => x1
    | x2 :: x1 :: x0 :: [] => x2
    | x3 :: x2 :: x1 :: x0 :: [] => x3
    | x4 :: x3 :: x2 :: x1 :: x0 :: [] => x4
    | x5 :: x4 :: x3 :: x2 :: x1 :: x0 :: [] => x5
    | x6 :: x5 :: x4 :: x3 :: x2 :: x1 :: x0 :: [] => x6
    | _ => raise Fail "omg Jacob you told me there would be max 7 items in the stack"

  fun null stack =
    case stack of
      [] => true
    | x0 :: [] => false
    | x1 :: x0 :: [] => false
    | x2 :: x1 :: x0 :: [] => false
    | x3 :: x2 :: x1 :: x0 :: [] => false
    | x4 :: x3 :: x2 :: x1 :: x0 :: [] => false
    | x5 :: x4 :: x3 :: x2 :: x1 :: x0 :: [] => false
    | x6 :: x5 :: x4 :: x3 :: x2 :: x1 :: x0 :: [] => false
    | _ => raise Fail "omg Jacob you told me there would be max 7 items in the stack"

end
