
# Lab №5-1

def calculate(x, z)
  if x == 5 then raise ZeroDivisionError end
  Math.sin(35.5 * z / (x-5)) + x**2 / (2*Math::E**x)
end
