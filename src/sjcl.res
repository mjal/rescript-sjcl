module Bn = {
  type t
  @module("sjcl-with-all") @new external new: string => t = "bn"
  @send external power: (t, int) => t = "power"
  @send external toString: t => string = "toString"
  @send external mod: (t, t) => t = "mod"
  @send external equals: (t, t) => bool = "equals"
  @send external mulmod: (t, t, t) => t = "mulmod"
  @send external powermod: (t, t, t) => t = "powermod"

  //let \"+" = (x, y) => x +. y
}

module BitArray = {
  type t
}

// Try using @scope("hex") and "fromBits" instead of "hex.fromBits"
module Hex = {
  @module("sjcl-with-all") @val external fromBits: BitArray.t => string = "hex.fromBits"
  @module("sjcl-with-all") @val external toBits: string => BitArray.t = "hex.toBits"
}

module Utf8String = {
  @module("sjcl-with-all") @val external fromBits: BitArray.t => string = "utf8String.fromBits"
  @module("sjcl-with-all") @val external toBits: string => BitArray.t = "utf8String.toBits"
}

module Sha256 = {
  @module("sjcl-with-all") @val external hash: string => BitArray.t = "sha256.hash"
}

module Misc = {
  @module("sjcl-with-all") @val external pbkdf2: (string, string, int, int) => BitArray.t = "misc.pbkdf2"
}

module Cipher = {
  type t
  @send external encrypt: (t, BitArray.t) => BitArray.t = "encrypt"
  module Aes = {
    @module("sjcl-with-all") @new external _new: BitArray.t => t = "cipher.aes"
  }
}

module Mode = {
  module CCM = {
    @module("sjcl-with-all") @val external encrypt: (Cipher.t, BitArray.t, BitArray.t) => BitArray.t = "mode.encrypt"
    @module("sjcl-with-all") @val external decrypt: (Cipher.t, BitArray.t, BitArray.t) => BitArray.t = "mode.decrypt"
  }
}

module Random = {
  @module("sjcl-with-all") @val external randomWords: int => BitArray.t = "random.randomWords"
}