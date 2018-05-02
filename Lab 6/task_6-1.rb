#
# лабораторная работа №6
# часть 1
#

def get_y(n)
  n = n.to_f
  n / (n**2 + 2)
end

def find_n(xi)
  n = 1
  until (get_y(n) < xi) do
    n += 1
  end
  return n, get_y(n)
end
