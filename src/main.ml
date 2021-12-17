open Owl
open! Core
open! Lwt.Syntax
open! Lwt.Infix

let main () = Lwt.return_unit

let () = Lwt_main.run @@ main ()
