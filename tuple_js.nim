## Program name........: wttrin_weather_lib3.nim
## Program description.: Testing Nim library that fetches weather from wttr.in
## Author..............: Sergio Lima
## Created on..........: Jul, 9 2022
## How to compile
##   $ nim js tuple_js.nim

import std/strformat

const citiesTuple = (
  saopaulo: "Sao Paulo-SP",
  maringa: "Maringa-PR",
  fortaleza: "Fortaleza-CE",
  manaus: "Manaus-AM")

proc getWeather(city: string): (string, string, string) =
  return ("15", "C", "☀️")

for city, cityName in citiesTuple.fieldPairs:
  let (temp, unit, cond) = getWeather(city)
  echo cityName & fmt""" {temp}{unit} {cond}"""

