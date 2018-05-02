#
# лабораторная работа №6
# часть 3
#

STEP = 0.01

def max(f, x1, x2)
  m = f.call(x1 + STEP)
  x = x1 + STEP*2
  while (x < x2)
    if m < (y = f.call(x))
      m = y
    end
    x += STEP
  end
  m
end

def scale(b, f, x1, x2)
  m = b / max(f, x1, x2)
  m
end
