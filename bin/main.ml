let () = print_endline "Hello, World!"
open Tsdl.Sdl

let (let>) v f =
  match v with
  | Result.Error (`Msg msg) -> prerr_endline msg
  | Ok x -> f x

let () = let> () = init Init.(video+events) in ()
let () = log "SDL initialized"