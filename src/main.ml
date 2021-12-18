open Owl
open! Core
open! Lwt.Syntax
open! Lwt.Infix

let main () = 
  let* x = Lwt.return @@ Coq_stats.gaussian_pdf 2.0 3.0 1.0 in
  let* () = Lwt_io.printf "test: %f\n" x in
  Lwt.return_unit

let () = Lwt_main.run @@ main ()
