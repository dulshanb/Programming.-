
# Lab №5-2

POS_START = 'a'.ord
POS_END = 'z'.ord
A_COUNT = POS_END - POS_START + 1

def encrypt_word(n, wo)
  str = wo.clone
  for i in 0..str.size-1
    str[i] = ((str[i].ord + n - POS_START) % A_COUNT + POS_START).chr
  end
  return str
end

def decrypt_word(n, wo)
  str = wo.clone
  shift = n % A_COUNT
  for i in 0..str.size-1
    str[i] = ((str[i].ord - n >= POS_START) ? str[i].ord - n : str[i].ord - n - POS_START + POS_END + 1).chr
  end
  return str
end

def encrypt_string(n, s)
  arr = s.split(' ')
  arr.map! { |wo| encrypt_word(n, wo) }
  arr.join(' ')
end

def decrypt_string(n, s)
  arr = s.split(' ')
  arr.map! { |wo| decrypt_word(n, wo) }
  arr.join(' ')
end
