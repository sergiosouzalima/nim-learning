import unittest
from myadd import newadd

suite "test my func":
  test "myadd func":
    check(newadd(4, 7) == 47)
    assert newadd(4, 7) == 47