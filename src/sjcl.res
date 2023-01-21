module Bn = {
  type t
  @module("sjcl-complete") @new external new: int => t = "bn"
  @send external power: (t, int) => t = "power"
  @send external toString: t => string = "toString"
}

let a = Bn.new(10)//("Hello")

()
