From mathcomp Require Import all_ssreflect.
From mathcomp Require Import all_algebra.
From mathcomp Require Import analysis.reals.
Require Import coq_owl.real.
Require Import coq_owl.real_notations.
Require Import coq_owl.owl.

Require Coq.extraction.Extraction.

Extract Inlined Constant zero => "0.0".

Extract Constant Real.sort => "float".

Extract Inductive list => "array" ["[||]" "(fun (x, xs) -> Array.append [|x|] xs)"] 
  "(fun branch0 branch1 xs ->
    match xs with
    | [||] -> branch0 ()
    | _ ->
      let n = Array.length xs in
      let x = Array.get xs 0 in
      let ys = Array.make (n - 1) x in
      Array.blit xs 1 ys 0 (n - 1);
      branch1 x ys)".

Extract Constant mean => "Owl.Stats.mean".

Extract Constant gaussian_pdf => "(fun x m s -> Owl.Stats.gaussian_pdf x ~mu:m ~sigma:s)".

Extraction "coq_owl" zero gaussian_pdf mean.
