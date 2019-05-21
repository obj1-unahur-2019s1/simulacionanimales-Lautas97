import wollok.game.*

class Vaca {
	var property position = game.at(3,5)
	const property image = "granVaca.jpg"

	var property peso = 200
	var property tieneSed = false
	var property tieneHambre = false
	
	method comer(kilos){
		if(self.tieneHambre()){
			peso += kilos/2
			tieneSed = true
		}
		
		
	}
	
	method tieneHambre(){
		
		if(peso < 200){
			tieneHambre = true
			return tieneHambre
		}else{
			tieneHambre = false
			return tieneHambre
		}
	}
	
	method beber(){
		tieneSed =false
		peso= (peso - 1).max(10)
	}
	method subir(){
		if (peso == 50){
			self.error("Tengo hambre vieja")
		}
		self.position(self.position().up(1))
		peso =50.max(peso*0.95)
	}
	method bajar(){
		if (peso == 50){
			self.error("Tengo hambre vieja")
		}
		self.position(self.position().down(1))
		peso =50.max(peso*0.95)
	}
	
	method izquierda(){
		if (peso == 50){
			self.error("Tengo hambre vieja")
		}
		self.position(self.position().left(1))
		peso =50.max(peso*0.95)
	}
	method derecha(){
		if (peso == 50){
			self.error("Tengo hambre vieja")
		}
		self.position(self.position().right(1))
		peso =50.max(peso*0.95)
	}
}

class Gallina{
	var property position = game.at(3,5)
	const property image = "granGallina.jpg"
	var property cuantasVecesComio = 0
	const property peso = 4
	var property tieneSed = false
	var property tieneHambre = false
	
	method comer(kilos){
		
		cuantasVecesComio += 1
		if(cuantasVecesComio == 2 or cuantasVecesComio == 5){
			
			tieneSed = true
		}else{tieneSed = false}
	}
	
	method beber(){
		tieneSed =false
	}
	
	method tieneHambre(){
		return cuantasVecesComio % 2 == 0
		
	}
	
	
	
	method subir(){
		self.position(self.position().up(1))
	}
	method bajar(){
		self.position(self.position().down(1))
	}
	
	method izquierda(){
		self.position(self.position().left(1))
	}
	method derecha(){
		self.position(self.position().right(1))
	}
}
