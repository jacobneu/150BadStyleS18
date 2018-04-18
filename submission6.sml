(* Submitter nickname: Cameron *)
(* Name of your artwork (optional): Stackd Hams *)


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
  type 'a t = 'a list * int * int
  exception Empty
  val id = fn x => x
  val K  = fn x => fn y => x
  val K' = fn x => fn y => y
  val K3a= fn a => fn b => fn c => a
  val K3b= fn a => fn b => fn c => b
  val K3c= fn a => fn b => fn c => c
  val K4 = fn a => fn b => fn c => fn d => a
  val K5 = fn a => fn b => fn c => fn d => fn e => a
  val why= fn a => fn b => fn c => fn d => fn e => e
  val K6 = fn a => fn b => fn c => fn d => fn e => fn f => a
  val K6e= fn a => fn b => fn c => fn d => fn e => fn f => e
  val K7 = fn a => fn b => fn c => fn d => fn e => fn f => fn g => a
  val true2 = fn a => fn b => true
  infix 9 `
  infix 9 --
  infix 9 steam'
  fun x ` y = x + y
  fun x -- y = x + y
  fun x steam' y = (fn _ => (x, (y, 0, 0)))

  val (well, seymour, i, made, it, despite, your, directions, superintendent, chalmers, welcome, hope, you, re, prepared, for, an, unforgettable, luncheon, egads, my, roast, is, ruined, but, what, were, to, purchase, fast, food, disguise, as', own, cooking, SEEEEYMOOOOOUR, was, just, uh, stretching, calves, on, the, windowsill, care, join, me, there, smoke, coming, oh, that, isn, t', s, STEAM, steamed, clams, we, re', having, mmm, whew, ready, mouthwatering, hamburgers, thought, no, said, HAMS, call, hams, yes, a, regional, dialect, region, upstate, new, york, really, well', m, from, utica, and', ve, never, heard, anyone, use, phrase, albany, expression, know, these, are, quite, similar, ones, they, have, at, krusty, burger, see, patented, skinner, burgers, old, family, recipe, them, fact, obviously, grilled, ye, one, thing, should, excuse, second, of', course, wonderful, time, had, by, all, i'', pooped, that', be, good, lord, happening, in'', aurora, borealis, year, day, part, country, localized, entirely, within, kitchen, this, may, house, fire, s', mother, northern, lights, odd, fellow, must, say, ham) =
    (fn _ => [], 0, K, 1, 2, K', 3, 4, id, [], 5, 6, K4, K5, 8, K, K, 11, 12, K6e, K3a, 14, 15, 16, K', K3b, true, K3a, 18, 19, 20, why, 21, 22, true, fn _ => fn _ => fn _ => ([], 23, 24), 25, K6, 26, 27, 28, K, K3a, 31, K4, 32, 33, 34, 35, 36, true2, 100, 37, id, id, 38, id, false, 40, K, 41, 43, true, 44, 45, 46, K3a, 47, 48, 49, 50, 51, K3a, K, 53, 54, 55, K3a, 56, 57, 58, fn _ => 59, K, 60, id, fn _ => 62, K5, 63, 64, 65, 66, 67, 68, 69, 70, K7, 71, id, 72, 73, 74, 75, K4, id, 77, 78, K3a, 79, 80, fn x => fn y => fn z => raise Empty, 81, 82, 83, K5, 85, 86, 87, K3b, 88, 89, K6, 90, 91, 92, 93, K6e, 94, 95, 96, 97, 98, K, 99, id, 101, 102, K5, K7, 103, 104, 105, 106, 107, K5, 108, 109, 110, 111, K4, 112, 113, fn _ => 0, 114, 115, 116, 117, 118, id, 119, 120)


(* I hope you're prepared for an unforgettable function! *)


         (**) (* ding-dong! *)


  fun empty _=
         (**) (well seymour, i made it, despite your directions)

  fun push delightfully(devilish,_,_)=let
  val    (**) ah = (superintendent chalmers, welcome,
         (**) i hope you`re prepared for an unforgettable luncheon)
  val    (**) oh = egads! my roast is ruined!
  in     (**) but what (if i were (to purchase fast food)
         (**) andalso disguise it as' my own cooking
  then   (**) (delightfully::devilish, seymour, oh)
  else   (**) SEEEEYMOOOOOUR! ! !)
  end

  fun null out=let
  val    (**) superintendent = (i was just, uh,
         (**) just stretching my calves on the windowsill)
  val    (**) isometric_exercise = care to join me
  in case(**) why is there smoke coming out of ([], your_oven, seymour)
  =>     (**) (oh that (isn`t' smoke -- it`s STEAM))
  |      (**) (steam::from, _ ,_) => the (steamed clams) (we`re' having!)
         (**) (mmm, steamed clams)
  end val in'=null

  fun pop(utica as(see, _, _))=let
  val    (**) superintendent = i hope you`re ready for mouthwatering hamburgers
         (**) (i (thought we were having) (steamed clams))
  val    (**) oh = (no, i said (steamed HAMS) -- that`s (what i call hamburgers))
  val _ =(**) you call hamburgers (steamed hams)
         (**) (yes, it`s (a regional dialect))
  val _ =(**) what region
  utica  (**) (upstate new york
         (**) really, well' i`m from utica,
         (**) and' i`ve never heard anyone use (the phrase steamed hams))
  val    (**) (oh_no, _) = (not (in' utica), it`s (an albany expression))
  val    (**) i' = see

  val _ =(**) (you know, these hamburgers are (quite similar) to
         (**) (the ones they have) at (krusty burger))
 val _=if(**) oh_no
  then   (**) patented skinner burgers!
  else   (**) old family recipe!
  val _ =(**) for steamed hams
  val _ =(**) yes!
         (**) yes
         (**) (and' (you call them steamed hams),
         (**) despite the (fact that they are obviously grilled))
  val _ =(**) ye --
  0 val  (**) you'::know =
         (**) one thing i' should
  val _ =(**) excuse me for one second
         (**) of' course

  val _ =(**) (well, that' was wonderful)
  val    (**) a_good = time was had by all
  know   (**) (i''`m pooped!)
  val _ =(**) (yes, i should be -- good lord, what is happening (in'' there!))
  val _ =(**) aurora borealis
         (**) aurora borealis!
         (**) (at this time of' year,
         (**) at this time of' day,
         (**) in'' this part of' the country,
         (**) localized entirely within your kitchen!)

         (**) yes!

  val _ =(**) may i see it
         (**) no

  val    (**) seymour = the house is (on fire!)
  val _ =(**) (no, mother, it`s' (just the northern lights)
  ,      (**) well seymour, you are an odd fellow, but i (must say),
  0) in  (**) (you' steam' a_good) ham
  end
end

         (**) (* heeelp! HEEEEELP!! *)
