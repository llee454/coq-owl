From mathcomp Require Import all_ssreflect.
From mathcomp Require Import all_algebra.
From mathcomp Require Import analysis.reals.
Require Import coq_owl.real.
Require Import coq_owl.real_notations.

Parameter mean : list R -> R.

Parameter gaussian_pdf : forall (x : R) (mu : R) (sigma : R), R.

