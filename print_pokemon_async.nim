##
## print_pokemon_async.nim
## How to compile
##   $ nim c -d:ssl --verbosity:0 --hints:off -d:danger -d:lto --opt:speed print_pokemon_async.nim
## How to run
##   $ ./print_pokemon_async

import asyncdispatch, asyncfutures, httpclient, json

proc printPokemon(number: int) {.async.} =
  let session = newAsyncHttpClient()
  let
    pokemonUrl = "https://pokeapi.co/api/v2/pokemon/" & $number
    resp = await session.getContent(pokemonUrl)
    pokemon = parseJson(resp)
  echo pokemon["name"]
  session.close()

proc main {.async.} =
  var futures: seq[Future[void]] = @[]
  for i in 1 ..< 151:
    futures.add printPokemon(i)
  await all(futures)


waitFor main()