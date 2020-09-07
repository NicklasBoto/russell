bru := import!("BruSKI.rl")

s := λf g x -> f(x, g(x))
k := λx y   -> x
i := λx     -> x

bru.bru!("
    s := λλλ (2 0 (1 0))
    k := λλ1
    i := λ0
")
