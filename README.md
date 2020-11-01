# russell

![jack](jack.png)

Toy language!

Because I want to learn to use LLVM, and also to FAFO.

## syntax ideas

```hs
Dog ::= { DogName : String }

jack : Dog
jack = Dog "Jack"

trait Nameable a {
    name : a -> String
}

name : Dog -> String
name = DogName
```