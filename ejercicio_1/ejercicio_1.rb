module Caminante
	def caminar
		puts "#{self.class.name} esta caminando."
	end
end

module Nadador
	def nadar
		puts "#{self.class.name} esta nadando."
	end
end

module Hablador
	def hablar
		puts "#{self.class.name} esta hablando."
	end
end

module Ladrador
	def ladrar
		puts "#{self.class.name} esta ladrando."
	end
end

module Volador
	def volar
		puts "#{self.class.name} esta volando."
	end
end

module Desplazable
	def desplazarse
		puts "#{self.class.name} se esta desplazando."
	end
end

module Presionador
	def presionar
		puts "#{self.class.name} esta presionando."
	end
end

module Mordedor
	def morder
		puts "#{self.class.name} esta mordiendo."
	end
end

module Saltador
	def saltar
		puts "#{self.class.name} esta saltando."
	end
end


class Mamifero; end
class Ave; include Caminante; end
class Reptil; end
class Anfibio; end
class Pez; end


class Hombre < Mamifero; include Caminante,Nadador,Hablador; end
class Perro < Mamifero; include Caminante,Ladrador; end
class Ballena < Mamifero; include Nadador; end
class Aguila < Ave; include Volador; end
class Pinguino < Ave; include Nadador; end
class Cocodrilo < Reptil; include Caminante,Nadador; end
class Boa < Reptil; include Desplazable,Presionador; end
class Cobra < Reptil; include Desplazable,Mordedor; end
class Sapo < Anfibio; include Saltador,Nadador; end
class Tiburon < Pez; include Nadador; end
#Nadador podria estar en pez pero lo dejo en Tiburon.