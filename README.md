# russell

![jack](jack.png)

Toy language!

Because I want to learn to use LLVM, and also to FAFO. 

## Why russell?
Don't ask for a good reason, there is none, get your own hobby.

## Syntax ideas

```hs
Dog ::= Dog { DogName : String }
Cat ::= Cat { CatName : String }

trait Nameable a   { name : a -> String }
trait Nameable Dog { name = DogName     }
trait Nameable Cat { name = CatName     }

jack = Dog("Jack")
joan = Cat("Joan")

-- Equivalent
jill : Dog {
    Dog("Jill")
}

double = x -> 2*x : Int -> Int

species Nameable a => a -> String {
    Dog(n) => "dog";
    Cat(n) => "cat"
}

main :-> () { 
    () => {
        petName <- name(jack);
        petType <- species(jack);
        println!("Hello, my name is {0} and I am a {1}", petName, petType)
    }
}
```