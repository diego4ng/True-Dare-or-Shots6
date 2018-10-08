//
//  CategoriasReto.swift
//  True Dare or shots
//
//  Created by Joel Lozano on 08/10/18.
//  Copyright © 2018 diego. All rights reserved.
//

import Foundation

class CategoriasRet{
    
    
    enum categories {
        case Verdad
        case Reto
        case Shot
    }
    
    enum subcategori{
        case Inocentes
        case Amigables
        case Prendas
        case Ñero
    }
    
    var categoria :categories
    var subCategoria: subcategori
    var preguntas = [Preguntas]()
    
    init() {
        categoria = .Reto
        subCategoria = .Amigables
        
        // preguntas Retos inocentes
        let p1 = Preguntas.init(id: 1, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "rr1")
        let p2 = Preguntas.init(id: 2, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "rr2")
        let p3 = Preguntas.init(id: 3, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "rr3")
        let p4 = Preguntas.init(id: 4, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "rr4" )
        let p5 = Preguntas.init(id: 5, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "rr5" )
        let p6 = Preguntas.init(id: 6, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "rr6" )
        let p7 = Preguntas.init(id: 7, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "rr7" )
        let p8 = Preguntas.init(id: 8, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "rr8")
        let p9 = Preguntas.init(id: 9, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "rr9" )
        let p10 = Preguntas.init(id: 10, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta:"rr10" )
        let p11 = Preguntas.init(id: 11, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta:  "rr11")
        let p12 = Preguntas.init(id: 12, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "rr12" )
        let p13 = Preguntas.init(id: 13, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "rr13" )
        
        
        // pregutnas retos Amigables
        let amigable1 = Preguntas.init(id: 1, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:  "1.-¿De que carecteristica tuya eres demasiado consciente?")
        let amigable2 = Preguntas.init(id: 2, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "2.-¿Cuando fue la primera vez que fumaste?")
        let amigable3 = Preguntas.init(id: 3, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "3.-¿Has fallado en seducir a alguien? Si es así cuantas veces?")
        let amigable4 = Preguntas.init(id: 4, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "4.-¿Romperías la relación de una pareja si eso te llevase a salir con la persona de tus sueños?")
        let amigable5 = Preguntas.init(id: 5, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "5.-¿Qué tipo de borracho eres: feliz,social,difundes el amor,malvado, sexual,calmado,astuto" )
        let amigable6 = Preguntas.init(id: 6, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "6.-¿Cuanto dinero ganas?")
        let amigable7 = Preguntas.init(id: 7, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "7.-Alguna vez has engañado a tu novi@?")
        let amigable8 = Preguntas.init(id: 8, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "8.-¿Cuantas veces durante el dia piensas en el sexo?")
        let amigable9 = Preguntas.init(id: 9, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:  "9.-Si fueras un alimento ¿Qué serías y cómo otras personas te comerían?")
        let amigable10 = Preguntas.init(id: 10, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "10.-Si no eres gay, que persona presente sería más probable que te volviera gay" )
        let amigable11 = Preguntas.init(id: 11, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:"11.-¿Cuál es el sueño mas sucio que has tenido? Describe con detalle" )
        let amigable12 = Preguntas.init(id: 12, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:"12.-¿Si tuvieras que matar a alguien ¿Quién sería?")
        
        // preguntas sexuales
        let s1 = Preguntas.init(id: 1, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "xxx1")
        let s2 = Preguntas.init(id: 2, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "xx2")
        let s3 = Preguntas.init(id: 3, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "xxx3")
        let s4 = Preguntas.init(id: 4, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "xxx4")
        let s5 = Preguntas.init(id: 5, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "xxx5")
        let s6 = Preguntas.init(id: 6, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "xxx6")
        let s7 = Preguntas.init(id: 7, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "xxx7")
        let s8 = Preguntas.init(id: 8, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "xxx8")
        
        // Preguntas prohibidas
        let ph1 = Preguntas.init(id: 1, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "ph1")
        let ph2 = Preguntas.init(id: 2, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "ph2")
        let ph3 = Preguntas.init(id: 3, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "ph3")
        let ph4 = Preguntas.init(id: 4, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "ph4")
        let ph5 = Preguntas.init(id: 5, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "ph5")
        let ph6 = Preguntas.init(id: 6, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "ph6")
        let ph7 = Preguntas.init(id: 7, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "ph7")
        let ph8 = Preguntas.init(id: 8, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "ph8")
        
        
        
        self.preguntas.append(p1)
        self.preguntas.append(p2)
        self.preguntas.append(p3)
        self.preguntas.append(p4)
        self.preguntas.append(p5)
        self.preguntas.append(p6)
        self.preguntas.append(p7)
        self.preguntas.append(p8)
        self.preguntas.append(p9)
        self.preguntas.append(p10)
        self.preguntas.append(p11)
        self.preguntas.append(p12)
        self.preguntas.append(p13)
        self.preguntas.append(amigable1)
        self.preguntas.append(amigable2)
        self.preguntas.append(amigable3)
        self.preguntas.append(amigable4)
        self.preguntas.append(amigable5)
        self.preguntas.append(amigable6)
        self.preguntas.append(amigable7)
        self.preguntas.append(amigable8)
        self.preguntas.append(amigable9)
        self.preguntas.append(amigable10)
        self.preguntas.append(amigable11)
        self.preguntas.append(amigable12)
        self.preguntas.append(s1)
        self.preguntas.append(s2)
        self.preguntas.append(s3)
        self.preguntas.append(s4)
        self.preguntas.append(s5)
        self.preguntas.append(s6)
        self.preguntas.append(s7)
        self.preguntas.append(s8)
        self.preguntas.append(ph1)
        self.preguntas.append(ph2)
        self.preguntas.append(ph3)
        self.preguntas.append(ph4)
        self.preguntas.append(ph5)
        self.preguntas.append(ph6)
        self.preguntas.append(ph7)
        self.preguntas.append(ph8)
        
        
        
        
        
    }
    
    func changeStatusVerdad(status : Bool) -> Void {
        for pregunta in preguntas{
            if (pregunta.subcategoria == .Inocentes){
                pregunta.status = status
            }
            
        }
        
    }
    func changeStatusAmigables(status : Bool) -> Void {
        for pregunta in preguntas{
            if (pregunta.subcategoria == .Amigables){
                pregunta.status = status
            }
            
        }
        
    }
    
    func changeStatusPrenda(status : Bool) -> Void {
        for pregunta in preguntas{
            if (pregunta.subcategoria == .Prendas){
                pregunta.status = status
            }
            
        }
        
    }
    
    func changeStatusÑero(status : Bool) -> Void {
        for pregunta in preguntas{
            if (pregunta.subcategoria == .Ñero){
                pregunta.status = status
            }
            
        }
        
    }
    
}
