#
# лабораторная работа №6
# часть 2
#

def get_y(n)
  n = n.to_f
  n / (n**2 + 2)
end

def get_enum
  Enumerator::Lazy.new(1..Float::INFINITY) do |yielder, n|
    yielder << get_y(n)
  end
end

def find_n(xi)
  en = get_enum
  n = 1
  until ((y = en.next) < xi) do
    n += 1
  end
  return n, y
end
