//
//  Preguntas.swift
//  True Dare or shots
//
//  Created by Joel Lozano on 21/09/18.
//  Copyright © 2018 diego. All rights reserved.
//

import Foundation

// Clase pregiuntas

class Preguntas {
    
    enum categories {
        case Verdad
        case Reto
        case Shot
    }
    
    enum subcategori{
        case Inocentes
        case Amigables
        case Sexuales
        case Prohibidas
    }
    
    let id: Int
    var status : Bool
    let categoria : categories
    let subcategoria : subcategori
    var pregunta : String
    
    init(id: Int, status: Bool, categoria: categories, subcategoria : subcategori, pregunta: String) {
        self.id = id
        self.status = status
        self.categoria = categoria
        self.subcategoria = subcategoria
        self.pregunta = pregunta
    }
    
    
    func desactivar(){
        print("holaa mundo")
    }
}


