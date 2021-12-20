
type __ = Obj.t

module Real :
 sig
  type sort = float
 end

val mean : Real.sort array -> Real.sort

val gaussian_pdf : Real.sort -> Real.sort -> Real.sort -> Real.sort
