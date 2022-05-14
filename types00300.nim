# Types
import json

# Integer
assert 42 is int

# Boolean 
assert true is bool
 
# String
assert "42" is string
 
# Float
assert 42.0 is float
 
# Sequence
assert @[1, 2, 3] is seq
 
# Tuple
assert (1, 2, 3) is tuple
 
# Set
assert {1, 2, 3} is set

# JSON
let data = """
  {"username": "Dominik"}
"""
let obj = parseJson(data)
assert obj.kind == JObject
assert obj["username"].kind == JString
assert obj["username"].str == "Dominik"