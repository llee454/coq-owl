
type __ = Obj.t

module Real =
 struct
  type sort = float
 end

(** val gaussian_pdf : Real.sort -> Real.sort -> Real.sort -> Real.sort **)

let gaussian_pdf = (fun x m s -> Owl.Stats.gaussian_pdf x ~mu:m ~sigma:s)
