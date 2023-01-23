module Bn = {
  type t
  @module("sjcl-complete") @new external new: string => t = "bn"
  @send external power: (t, int) => t = "power"
  @send external toString: t => string = "toString"
  @send external mod: (t, t) => t = "mod"
  @send external equals: (t, t) => bool = "equals"
  @send external mulmod: (t, t, t) => t = "mulmod"
  @send external powermod: (t, t, t) => t = "powermod"

  //let \"+" = (x, y) => x +. y
}

let a = Bn.new("10")//("Hello")

()
