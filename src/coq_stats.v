From mathcomp Require Import all_ssreflect.
From mathcomp Require Import all_algebra.
From mathcomp Require Import analysis.reals.

Require Coq.extraction.Extraction.

Parameter R : realType.

Parameter gaussian_pdf : forall (x : R) (mu : R) (sigma : R), R.

(* Set Extraction Conservative Types. *)

Extract Constant Real.sort => "float".

Extract Constant gaussian_pdf => "(fun x m s -> Owl.Stats.gaussian_pdf x ~mu:m ~sigma:s)".

Extraction "Coq_stats" gaussian_pdf.
