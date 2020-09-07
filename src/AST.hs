module AST () where

data Statement = TypeStatement [TypeConstructor]
               | FunctionStatement TypeSignature Name (Maybe Arguments) Expression
               | ClassStatement Name Arguments [TypeSignature]

type Name = String
type Arguments = [Name]
type TypeSignature = [TypeConstructor]

data TypeConstructor = TypeConstructor Name (Maybe Arguments)
