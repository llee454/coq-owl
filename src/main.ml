open! Owl
open! Core
open! Lwt.Syntax
open! Lwt.Infix

let () = Lwt_main.run @@
  Lwt_io.printf "Example Gaussian PDF Calculation Result: %f\n" (Coq_owl.gaussian_pdf 2.0 3.0 1.0)
