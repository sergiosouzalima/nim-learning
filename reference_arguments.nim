
proc divmod(a, b: int; res, remainder: var int) =
  res = a div b        # integer division
  remainder = a mod b  # integer modulo operation

var
  x, y: int

divmod(8, 5, x, y) # modifies x and y

echo x

echo y