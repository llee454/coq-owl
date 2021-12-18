open! Owl
open! Core
open! Lwt.Syntax
open! Lwt.Infix

let () =
  Lwt_io.printf "Example Gaussian PDF Calculation Result: %f\n" (Coq_stats.gaussian_pdf 2.0 3.0 1.0)
  |> Lwt_main.run