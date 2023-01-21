module Bn = {
  type t
  @module("sjcl") @new external new: unit => t = "bn"
}

let a = Bn.new()//("Hello")

()
