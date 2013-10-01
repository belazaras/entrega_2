require_relative("ejercicio_2")

p1 = Product.new '01', 'Martillo', '50'
p2 = Product.new '02', 'Clavos x 100', '10'

p = Purchase.new
10.times do p.add p1 end
p.add p2

puts p.total

p.apply_discount do |purchase|
	purchase.total -= purchase.total * 0.2 if purchase.products.count > 10
end

puts p.total