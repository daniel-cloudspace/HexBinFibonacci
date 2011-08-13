

def fib(n)
  a,b = 0,1
  n.times do
    a,b = b,a+b
  end
  b
end

(0..100).each do |n|
    m = fib(n)
    puts m.to_s(2).rjust(90, '0')
end


