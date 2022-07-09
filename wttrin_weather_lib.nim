## Program name........: wttrin_weather_lib.nim
## Program description.: Testing Nim library that fetches weather from wttr.in
## Author..............: Sergio Lima
## Created on..........: Jul, 9 2022
## Install lib
##   $ nimble install wttrin -y
## How to compile
##   $ nim c -d:ssl wttrin_weather_lib.nim
## How to run
##   $ ./wttrin_weather_lib

import wttrin
import std/strformat

const citiesTuple = (
  saopaulo: "Sao Paulo-SP",
  maringa: "Maringa-PR",
  fortaleza: "Fortaleza-CE",
  manaus: "Manaus-AM")

proc getWeather(city: string): (string, string, string) =
  return ($getTemp(city), $getUnit(city), getCondition(city))

for city, cityName in citiesTuple.fieldPairs:
  let (temp, unit, cond) = getWeather(city)
  echo cityName & fmt""" {temp}{unit} {cond}"""