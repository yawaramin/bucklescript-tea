type 'msg elem = ?key:string -> ?unique:string -> 'msg Vdom.properties -> 'msg Vdom.t list -> 'msg Vdom.t

val noNode : 'msg Vdom.t
val text : string -> 'msg Vdom.t
val br : 'msg Vdom.properties -> 'msg Vdom.t
val div : 'msg elem
val span : 'msg elem
val button : 'msg elem
val input' : 'msg elem
val ul : 'msg elem
val ol : 'msg elem
val li : 'msg elem
val style : string -> string -> 'msg Vdom.property
val value : string -> 'msg Vdom.property
val onClick : 'msg -> 'msg Vdom.property
