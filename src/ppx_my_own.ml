open Ppxlib

let impl : Ast.structure -> Ast.structure = fun x -> x
let intf : Ast.signature -> Ast.signature = fun x -> x

let () = Ppxlib.Driver.register_transformation
  ~impl: impl
  ~intf: intf
  "ppx_my_own"
