
# Lab №7-2


class IntNum
  def initialize
    @val = 0
  end

  def set_val(v)
    @val = v.to_i
  end
  def get_val
    @val
  end
  def get_val_length
    @val >= 0 ? @val.to_s.length : @val.to_s.length - 1
  end

  def print
    puts "val = #{@val}"
  end
end

class NumStr < IntNum
  def initialize
    @val = 0
    @str = ''
  end

  def set_val(i, s)
    super(i)
    @str = s.to_s
  end
  def get_val
    return @val, @str
  end
  def get_val_length
    return super, @str.length
  end
  def get_num_length
    return get_val_length[0]
  end
  def get_str_length
    @str.length
  end

  def print
    puts "num = #{@val}, str = '#{@str}'"
  end
end
