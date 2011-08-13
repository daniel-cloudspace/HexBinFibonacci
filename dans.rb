def fib(n)
  a,b = 0,1
  n.times do
    a,b = b,a+b
  end
  b
end

binaries = []

(0..200).each do |n|
    m = fib(n)
    binaries.push m.to_s(2).rjust(100, '0').split('')
end

verticals = []

binaries.each do |t|
    verticals.push t[80]
end

puts verticals.to_s.gsub(/^0*/,'')
