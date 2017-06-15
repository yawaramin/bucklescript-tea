type 'msg applicationCallbacks = { enqueue : 'msg -> unit }
type 'msg property
type 'msg properties = 'msg property list
type 'msg t

val noNode : 'msg t
val text : string -> 'msg t
val fullnode : string -> string -> string -> string -> 'msg properties -> 'msg t list -> 'msg t
val lazyGen : string -> (unit -> 'msg t) -> 'msg t
val noProp : 'msg property
val prop : string -> string -> 'msg property
val onCB : string -> string -> (Web.Node.event -> 'a option) -> 'a property
val onMsg : string -> 'a -> 'a property
val style : string -> string -> 'msg property
val styles : (string * string) list -> 'msg property
val attribute : string -> string -> string -> 'msg property
val patchVNodesIntoElement : 'msg applicationCallbacks ref -> Web_node.t -> 'msg t list -> 'msg t list -> 'msg t list
val wrapCallbacks : ('a -> 'b) -> 'b applicationCallbacks ref -> 'a applicationCallbacks ref
val map : ('a -> 'b) -> 'a t -> 'b t
