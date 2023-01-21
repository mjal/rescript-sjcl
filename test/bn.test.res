open Zora
  Js.log(0)

zoraBlock("Bignum toString test", t => {
  Js.log(1)
  // TODO: Use pipe
  let n1 = Sjcl.Bn.new(12312434)
  Js.log(2)

  let n2 = Sjcl.Bn.power(n1, 10)
  let str = Sjcl.Bn.toString(n2)

  t->equal(str, "0xb99c06973dcc72429aa1dd41b0bc40a424289a05d3d72f066ee4e71c400", "Should match")

  Js.log(str)
  Js.log(2)
})