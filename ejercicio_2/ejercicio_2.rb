class Product
	def initialize(code,name,price)
		@code = code
		@name = name
		@price = Float(price)
	end

	def code
		@code
	end

	def price
		@price
	end

end

class Purchase
	def initialize
		@products = []
		@total = 0.0
	end

	def add(product)
		@products << product
		@total += product.price
	end

	def delete(product)
		@products.delete(product)
		@total -= product.price
	end

	def products
		@products
	end

	def total
		@total
	end

	def total=(total)
		@total = total
	end

	def apply_discount
		yield self
	end

end