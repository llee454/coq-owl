From mathcomp Require Import all_ssreflect.
From mathcomp Require Import all_algebra.
From mathcomp Require Import analysis.reals.

Require Coq.extraction.Extraction.

Parameter R : realType.

Parameter r_nat : nat -> R.

Definition zero : R := r_nat 0.

