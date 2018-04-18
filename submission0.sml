(* Submitter nickname: make_garph *)
(* Name of your artwork (optional): if true=true then true else false *)

(* Submission begins HERE *)

structure Stackd :>
  sig
    type 'a t
    exception Empty
    val empty : unit -> 'a t
    val push : 'a -> 'a t -> 'a t
    val pop : 'a t -> 'a * 'a t
    val null : 'a t -> bool
    val printSt : ('a -> string) -> 'a t -> unit
  end =
struct
  type 'a t =
    (real -> exn) *
    (string -> 'a) *
    Random.rand *
    (real * real)

  exception Empty

  exception NoElt
  exception OneElt of string
  exception TwoElt of string
  exception ThreeElt of string
  exception FourElt of string
  exception FiveElt of string
  exception SixElt of string
  exception SevenElt of string
  exception OverflowElt of string
  exception Badness

  fun convert (OneElt(x)) = TwoElt (x)
    | convert (TwoElt(x)) = ThreeElt(x)
    | convert (ThreeElt(x)) = FourElt(x)
    | convert (FourElt(x)) = FiveElt(x)
    | convert (FiveElt(x)) = SixElt(x)
    | convert (SixElt(x)) = SevenElt(x)
    | convert (SevenElt(x)) = OverflowElt "AHHHHHH"
    | convert _ = raise Fail "Converted Bad Exception"
  fun unconvert (OneElt(x)) = NoElt
    | unconvert (TwoElt(x)) = OneElt(x)
    | unconvert (ThreeElt(x)) = TwoElt(x)
    | unconvert (FourElt(x)) = ThreeElt(x)
    | unconvert (FiveElt(x)) = FourElt(x)
    | unconvert (SixElt(x)) = FiveElt(x)
    | unconvert (SevenElt(x)) = SixElt(x)
    | unconvert _ = raise Fail "Unconverted Bad Exception"


  fun empty () = ( fn _ => raise NoElt,fn _ => raise NoElt, Random.rand(1,0), (0.0,0.0))
  fun push x (f,g,R,(a,b)) =
    let
      val w = Int.toString(Random.randInt R)
      fun newF z = case Real.compare(z,a) of
                          LESS => OneElt(w)
                        | _ => convert(f z)
      fun newG z = if z=w then x else g z
    in
      (newF, newG, R, (a - 1.0, b))
    end

  fun pop (f,g,R,(a,b)) =
    (raise f(a+0.5)) handle
                       OneElt(s) => (g(s),(unconvert o f,g,R,(a + 1.0, b)))
                       |       _ => raise Empty

  fun null (f,g,R,(a,b)) = (f(a + ((b-a)/2.0)); false) handle _ => true

  fun printSt f s =
    let
      fun rip s' = (let val (i,s'') = pop s' in i::(rip s'') end) handle Empty => []
    in
      print("[" ^ String.concatWith ", " (map f (rip s)) ^ "]\n")
    end
end

