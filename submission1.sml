(* Submitter nickname: Alonzo Church *)
(* Name of your artwork: Values are Functions *)

(* Submission begins HERE *)

structure Stackd :
  sig
    type 'a t
    exception Empty
    val empty : unit -> 'a t
    val push : 'a -> 'a t -> 'a t
    val pop : 'a t -> 'a * 'a t
    val null : 'a t -> bool
  end =
struct
  (* Every single value in the following code is a function, except Empty, (),
   * true, and false (which are regrettably required by the signature).
   *
   * Explaining why it works is left as an exercise the reader.
   *)

  type 'a t = unit
  exception Empty

  (* We won't be needing these *)
  nonfix +
  nonfix *
  nonfix -
  nonfix /
  nonfix ^

  val + = Unsafe.cast (* Necessary to circumvent the value restriction (oh no!) *)
  val * = fn _ => raise Empty
  val - = false
  val / = true

  fun empty ? = + (fn ! => fn _ => !)

  fun push ! ? =
    + ((fn ! => fn ? => fn _ => fn ^ => ^ ! ?) (+ !) (+ ?))

  fun pop ! =
    let
      val ! = + !
    in
      if (fn ! => ! / (fn _ => fn _ => -)) ! then * *
      else ((fn ! => fn ? => ! ? (fn ! => fn _ => !)) ! -,
            (fn ! => fn ? => ! ? (fn _ => fn ! => !)) ! -)
    end

  fun null ! = (fn ! => ! / (fn _ => fn _ => -)) (+ !)
end
