
type __ = Obj.t

module Real :
 sig
  type sort = float
 end

val gaussian_pdf : Real.sort -> Real.sort -> Real.sort -> Real.sort
