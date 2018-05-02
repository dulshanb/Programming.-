#
# лабораторная работа №8
# Ruby on Rails
#
require "prime"

def find_twins(n)
  if n % 2 == 0
    n1 = n + 1
    n2 = 2*n - 1
  else
    n1 = n
    n2 = 2*n - 1
  end
  n1, n2 = [n1, n2].minmax

  res = []
  was = Prime.prime?(n1)
  i = n1 + 2
  while i <= n2 do
    now = Prime.prime?(i)
    if now && was
      res << [i-2, i]
    else
      was = now
    end
    i += 2
  end

  return res
end
