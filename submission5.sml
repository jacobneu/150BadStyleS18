(* Submitter nickname: DirtyHacks *)
(* Name of your artwork (optional): "angery about exn" *)

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
  open SMLofNJ.Cont

  (* Philosophy: dynamically typed languages are better than statically typed languages. Also,
   * languages with incomprehensible treatment of function closures are better than languages with sensible
   * function closures. Therefore, I implement this stack using dynamic typing and incomprehensible
   * control-flow mechanisms *)

  (* A bit of background: it is a "well-known" fact that extensible datatypes can be implemented as
   * a unit -> unit function. This is used to hack extensibles into languages that don't have them.
   * As SML only has exn, which "famously" stands for exception, not extensible >:(, I have no choice but
   * to do this.
   *)
  type 'a t = unit -> unit

  (* I'm not writing my code in a new structure bc modularity is bad. *)
  fun newtag () =
      let
        val x = ref NONE
      in
        fn () => x := NONE
      end
  (* oH nO! The value restriction. Let me rewrite this in a totally different way. *)

  (*  fun newtag v =
      let x = if true
              then ref NONE
              else ref (SOME v) in
      (fn () => x := NONE) end *)
  (* Wait I did this backwards. This function doesn't work, and it doesn't compile. Gonna have
   * mercy on the infra tas and comment it out so that my file will compile. Ok, try three. *)

  fun exn (* Ha! Guess what exn stands for now! *) v =
      let val tag = ref (SOME v) in
        (tag, fn () => tag := SOME v) end

  fun iftag t e e1 e2 =
      (t := NONE;
       e ();
       case !t of
           NONE => e2
         | SOME x => e1 x)

  (* NOw the funs begins *)

  exception ExnStandsForExtensible

  val (emptag, emp) = exn 0

  val ohgodwhatdoidowiththetags (* Ignore this *) : ((int * (unit -> unit)) option ref) list ref = ref []

  exception Empty
  fun empty () = emp
  fun push x s = (let
                   val (t, e) = exn (x, s)
                 in
                   (ohgodwhatdoidowiththetags := (Unsafe.cast t)::(!ohgodwhatdoidowiththetags); e)
                 end)
  fun pop s = case List.find isSome (map (fn t => iftag t s (fn x => SOME x) NONE) (!ohgodwhatdoidowiththetags)) of
                  NONE => raise Empty
                (* Literally no idea what's wrong with the type but adding this
                 * extra SOME seems to work *)
                | SOME (SOME (x, s)) => (Unsafe.cast x, s)

  fun null s =
      let
        val r1 = ref 0 (* 0 means false here *)
        val r2 = ref 0 (* What? There's a type for that? Nah fam. *)
      in
        (capture (fn cc =>
                     (iftag emptag s (fn x => escape cc (fn () => raise ExnStandsForExtensible))
                            (fn () => ())
                     handle _ => (r1 := 1; raise ExnStandsForExtensible))
                (* Pro-tip: When handling exceptions, only handle _. This can never go wrong ever. *)
                 ) () handle _ => (r2 := 1);
         if !r1 = 0
         then false
         else if !r2 = 0
         then false
         else if !r1 = 1 andalso !r2 = 1
         (* I ask you: How tf does r1 ever get set to 1, since an exception is never
          * raised inside of capture? And yet, mysteriously, it does. *)
         then true
         else false)
      end
end
