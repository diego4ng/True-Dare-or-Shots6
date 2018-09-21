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
    
    let id: Int
    let status : Bool
    let categoria : String
    let subcategoria : String
    var pregunta : String
    
    init(id: Int, status: Bool, categoria: String, subcategoria : String, pregunta: String) {
        self.id = id
        self.status = status
        self.categoria = categoria
        self.subcategoria = subcategoria
        self.pregunta = pregunta
    }
}
