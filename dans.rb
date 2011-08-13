

def fib(n)
  a,b = 0,1
  n.times do
    a,b = b,a+b
  end
  b
end

def generate_huge_list(n)
    (0..n).collect do |n|
        m = fib(n)
        m.to_s(2).rjust(100, '0').split('')
    end
end

def get_column(list, n)
    list.collect { |t|t[n] }
end

list = generate_huge_list(200)
column = get_column(list, 89)

puts column.to_s.gsub(/^0*/,'')
