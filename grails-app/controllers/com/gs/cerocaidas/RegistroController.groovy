package com.gs.cerocaidas

class RegistroController {
	def index() {
        def ultimo = Registro.list().last()
        respond([lastTime: ultimo.lastTime])
    }
}