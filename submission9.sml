(* Submitter nickname: JCB *)

(* Submission begins HERE *)
(**
typedef struct stack_header stack_t;
struct stack_header {
  list* top;
  list* floor;
};

stack* empty()
//@ensures is_stack(\result);
//@ensures stack_empty(\result);
{
  stack* S = alloc(stack);
  list* l = alloc(list);
  S->top = l;
  S->floor = l;
  return S;
}

void push(stack* S, elem x)
//@requires is_stack(S);
//@ensures is_stack(S);
{
  list* l = alloc(list);
  l->data = x;
  l->next = S->top;
  S->top = l;
}

elem pop(stack* S)
//@requires is_stack(S);
//@requires !stack_empty(S);
//@ensures is_stack(S);
{
  elem e = S->top->data;
  S->top = S->top->next;
  return e;
}

**)

structure msort = OS.Process;val avltree = msort.system;
structure c0vm = List;structure clac = String;val gps = map

val findPartition : string -> int list = Unsafe.cast o clac.explode

fun evaluate [] = []
  | evaluate [x] = [x]
  | evaluate (x::xs) =
      let val (L, R) = c0vm.partition (fn y => y > x) xs
      in (evaluate L) @ x :: (evaluate R)
      end
fun evalaute [] = []
  | evalaute [x] = [x]
  | evalaute (x::xs) =
      let val (L, R) = c0vm.partition (fn y => y < x) xs
      in (evalaute L) @ x :: (evalaute R)
      end

val i = 111;val n = 40;val d = 95;val e = 100;val x = 47;val g = 41;
fun fgsds d = d+i-e+x-n
val jcb = evaluate [e+1, e div 3*5 - (n+10), e]
val jacob = evaluate [e-d+e-d+e-d+e, e, e+1];val jvb =
  [e div 3*5-(n+10),e div 6+e,e div 7+e,i-g+x,e*10 div 16*2-(e div 4),e+16]
val v = x+n+e-d+e-d
val vj = evaluate [v,v+1];val vj =
  vj @ [e] @ gps fgsds (evalaute vj) @
  [121,d-g-g+d] @ [e+1,x-1,i+4] @ gps (fn x=>x+i-e) vj
fun collect s1 s2 =
  (i+4)::x::findPartition s1@(x::findPartition s2@[47,103])
val >>= = "[^"
val >> = "]/"

val S = i + n + d - e + x - i - n + g
val a = n+x+d-e+g+g+g+g+g+g+g+g+g+g-n-n-n-n-n-n-n-n-n-n
val m = x+g+d-n-n
val e = g+1

val nexm = [n,e,x,m]
val enxm = [e,n+1,x,m]

val wtf : int list -> string = clac.implode o gps Unsafe.cast
val notjvb = [c0vm.hd jvb,x]

fun f s = avltree (wtf jacob ^ s ^ " " ^ wtf vj)
fun w s = "\"" ^ s ^ "\""

val ! = [x,94,n,a,e,a,e,46,e,36,x,d+5]
val !! = notjvb @ [94,a,e,a,e,n+1,36,x] @ findPartition "end" @ [x,i-8]
val !!! = collect "bool" "val"
val !!!! = collect "void" "fun"
val !!!!! = collect "stack\\*" "fun"
val !!!!!! = collect "elem" "fun"
val !!!!!!! = collect ";" ""

val ? = [a,x,a,x,x,d+5]
val ?! = notjvb @ findPartition "_header" @ [x,100,61,x,x+2]
val ?? = [52,115,x] @ jvb @ x:: jvb @ [117,114,101,x,103]
val ??? = [i+4,x,i+4,x,S,x,50]
val ???? = notjvb @ [123,x] @ nexm
val ????? = notjvb @ [125,x] @ enxm
val ?????? = notjvb @ findPartition ("(" ^ >>= ^ "*)" ^ >>) @ nexm
val ??????? = notjvb @ findPartition (>>= ^ "*(])/") @ enxm

val <$> = [x,115,x,36,x]

val !? = x::findPartition "null" @ <$> @ findPartition "=List.null/"
val !?!? = x::findPartition "push" @ <$> @ findPartition "a b=a::b/"
val !?!?!? =
  x::findPartition "pop" @ <$> @
  findPartition "l=case l of []=>raise Empty|x::xs=>(x,xs)/"
val !?!?!?!? = x::findPartition "empty" @ <$> @ findPartition "=[]/"
val ?!?!?!?! = x::94::jvb@[x,99,a]@jvb@[n,e]
val ?!? = [52,115,x,a+2,a,a,83,e,a,124,a,a,83,e,36,x,x,103]


val h8 = f(" -i '44,$d' ")
val a1 =
  f(" -i " ^ w (clac.concatWith ";"
  (* "Cam tries to solve his 210 hw" circa 2017, colorised *)
  [wtf!,wtf!!,wtf!!!,wtf!!!!,wtf!!!!!,wtf!!!!!!,wtf!!!!!!!]))
val b2 =
  f(" -i " ^ w (clac.concatWith ";"
  [wtf?,wtf?!,wtf??,wtf???,wtf????,wtf?????,wtf??????,wtf???????]))
val c3 = f(" -i " ^ w(wtf!?))
val d4 = f(" -i " ^ w(wtf!?!?))
val e5 = f(" -i " ^ w(wtf!?!?!?))
val f6 = f(" -i " ^ w(wtf!?!?!?!?))
val g7 = f(" -i " ^ w(wtf?!?!?!?!))
val h9 = f(" -i " ^ w(wtf?!?))
val _ = use "badstyle.sml"
