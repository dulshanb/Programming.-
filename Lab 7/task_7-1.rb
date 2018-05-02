
# Lab №7-1

def file_load(fname)
  f = IO.read(fname)
  f.split("\n").map { |s| s.split(/[ ,]/).map { |s| s.to_f } }
end

def file_save(fname, data)
  lines = data.map { |line| line.join(',') }.join("\n")
  IO.write(fname, lines)
end
