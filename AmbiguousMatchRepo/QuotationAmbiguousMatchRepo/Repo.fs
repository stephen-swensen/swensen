namespace QuotationAmbiguousMatchRepo
open Xunit

module Repo = 
    [<Fact>]
    let repo () =
        <@ System.Exception() @>


open System
open System.Reflection
module Why =
    let commit (results : _[]) = 
        match results with
        | [||] -> null
        | [| m |] -> m
        | _ -> raise (AmbiguousMatchException())

    let getConstructor (this: Type) (parameterTypes : Type[]) = 
        let matches =
            this.GetTypeInfo().DeclaredConstructors
            |> Seq.filter (fun ci ->
                let parameters = ci.GetParameters()
                (parameters.Length = parameterTypes.Length) &&
                (parameterTypes, parameters) ||> Array.forall2 (fun ty pi -> pi.ParameterType.Equals ty) 
            )
            |> Seq.toArray

        matches |> commit

    [<Fact>]
    let getExnConstructor () =
        getConstructor (typeof<System.Exception>) [||]