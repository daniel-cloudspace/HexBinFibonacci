

def fib(n)
  a,b = 0,1
  n.times do
    printf("%d\n", a)
    a,b = b,a+b
  end
end

puts fib(9).to_s(2).rjust(90, '0')


