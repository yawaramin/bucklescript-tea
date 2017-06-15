type ('flags, 'model, 'msg) program = {
  init : 'flags -> 'model * 'msg Tea_cmd.t;
  update : 'model -> 'msg -> 'model * 'msg Tea_cmd.t;
  view : 'model -> 'msg Vdom.t;
  subscriptions : 'model -> 'msg Tea_sub.t;
  shutdown : 'model -> 'msg Tea_cmd.t;
}

type ('model, 'msg) beginnerProgram = {
  model : 'model;
  update : 'model -> 'msg -> 'model;
  view : 'model -> 'msg  Vdom.t;
}

type 'msg programInterface

val program : ('flags, 'model, 'msg) program -> Web.Node.t Js.null_undefined -> 'flags -> 'msg programInterface
val beginnerProgram : ('model, 'msg) beginnerProgram -> Web.Node.t Js.null_undefined -> unit -> 'msg programInterface
