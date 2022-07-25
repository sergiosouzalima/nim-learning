##
## print_pokemon.nim
## How to compile
##   $ nim c -d:ssl --verbosity:0 --hints:off -d:danger -d:lto --opt:speed print_pokemon.nim
## How to run
##   $ ./print_pokemon

import httpclient, json

proc printPokemon(number: int) =
  let session = newHttpClient()
  let
    pokemonUrl = "https://pokeapi.co/api/v2/pokemon/" & $number
    resp = session.getContent(pokemonUrl)
    pokemon = parseJson(resp)
  echo pokemon["name"]
  session.close()

proc main() =
  for i in 1 ..< 151:
    printPokemon(i)


when isMainModule:
  main()