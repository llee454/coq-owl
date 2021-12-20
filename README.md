Readme
======

This library defines a Coq function that describes statistical tests and transformations. You can use these functions to apply statistical tests and transformations, and Coq will ensure that you only apply these tests and transformations to data that satisfy the constraints associated with them. By checking that these constraints apply, these functions prevent common mistakes.

Every statistical transformation and test has an associated set of logical constraints. You can only apply them to data that satisfy these constraints. For instance, the `mean` function is an example of a statistical transformation. It takes a list of values and returns a single summary statistic - the average value. It has an associated constraint. You can only apply the `mean` function to values that all have the same unit. For example, you cannot apply the `mean` function to a list that includes measurements made in both inches and feet. While it is easy to catch this mistake, analogous errors are common when applying more sophisticated statistical functions. By checking that such constraints are satisfied, this library prevents this type of mistake.

Initializing the Build Environment
----------------------------------

1. opam update && OPAMYES=1 opam switch create . ocaml-variants.4.10.0+flambda --deps-only
2. opam repo add coq-released https://coq.inria.fr/opam/released
3. opam install coq
4. opam install coq-mathcomp-ssreflect
5. opam install coq-mathcomp-analysis
6. cd src
7. dune build
8. dune exe ./main.exe

Note: Coq uses make files to generate libraries. Execute the following commands to generate the Coq Makefiles and to compile the Coq libraries:

9. coq_makefile -f _CoqProject > Makefile
10. make
