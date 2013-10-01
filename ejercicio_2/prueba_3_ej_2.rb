require_relative("ejercicio_2")

p1 = Product.new '01', 'Martillo', '50'
p2 = Product.new '02', 'Clavos x 100', '10'

p = Purchase.new
3.times do p.add p1 end
7.times do p.add p2 end

puts p.total

p.apply_discount do |purchase|
	counts = Hash.new(0)
	purchase.products.each do |product|
		counts[product] += 1
	end
	counts.each do |key,value|
		purchase.total -= value / 3 * key.price
	end
end

puts p.total