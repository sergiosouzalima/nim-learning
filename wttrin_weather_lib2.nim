## Program name........: wttrin_weather_lib2.nim
## Program description.: Testing Nim library that fetches weather from wttr.in
## Author..............: Sergio Lima
## Created on..........: Jul, 10 2022
## Install lib
##   $ nimble install wttrin -y
## How to compile
##   $ nim c -d:ssl wttrin_weather_lib2.nim
## How to run
##   $ ./wttrin_weather_lib2

import wttrin
import std/strformat

const citiesTuple = (
  saopaulo: "Sao Paulo-SP",
  maringa: "Maringa-PR",
  fortaleza: "Fortaleza-CE",
  manaus: "Manaus-AM")

proc getWeather(city: string): array[3, string] =
  return [$getTemp(city), $getUnit(city), getCondition(city)]

for city, cityName in citiesTuple.fieldPairs:
  let arrayWeather = getWeather(city)
  let temp = arrayWeather[0]
  let unit = arrayWeather[1]
  let cond = arrayWeather[2]
  echo cityName & fmt""" {temp}{unit} {cond}"""

