(**
  This module defines the Coq-owl notations that map numerals such as 0, 1, etc
  into Owl library reals.

  For example, using this library we may execute:
  > Check (5 : R)%owl.
*)
From mathcomp Require Import all_ssreflect.
From mathcomp Require Import all_algebra.
From mathcomp Require Import analysis.reals.
Require Import coq_owl.real.

(* real notations. *)
Inductive R_not : Set :=
| r_not_nat : nat -> R_not.

Definition R_not_parse (x : Number.int) : option R_not :=
  match x with
  | Number.IntHexadecimal _ => None
  | Number.IntDecimal y =>
    match y with
    | Decimal.Neg _ => None
    | Decimal.Pos n => Some (r_not_nat (Nat.of_uint n))
    end 
  end.

Definition R_not_print (r : R_not) : Number.int :=
  match r with
  | r_not_nat n => Number.IntDecimal (Decimal.Pos (Nat.to_uint n))
  end.

Declare Scope owl_scope.

Delimit Scope owl_scope with owl.

(* Define a notation that map numerals such as 0, 1, 8 onto Owl reals. *)
Number Notation R R_not_parse R_not_print (via R_not mapping [r_nat => r_not_nat ]) : owl_scope.
