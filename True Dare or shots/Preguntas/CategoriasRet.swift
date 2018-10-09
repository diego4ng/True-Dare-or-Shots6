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
        
        // Retos inocentes
        let p1 = Preguntas.init(id: 1, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "Pela un plátano con los pies")
        let p2 = Preguntas.init(id: 2, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "Imita a un robot")
        let p3 = Preguntas.init(id: 3, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "Recita el alfabeto al revés")
        let p4 = Preguntas.init(id: 4, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "Toca el timbre de tu vecino para pedirle papel higiénico" )
        let p5 = Preguntas.init(id: 5, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "Imita tu escena de película preferida" )
        let p6 = Preguntas.init(id: 6, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "No parpadees durante un minuto" )
        let p7 = Preguntas.init(id: 7, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "Con los ojos vendados dibuja el animal que hayan escogido los demás" )
        let p8 = Preguntas.init(id: 8, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "Envía un mensaje de texto que diga “¡Feliz Año!”a todo tus contactos")
        let p9 = Preguntas.init(id: 9, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "Imita a un burro" )
        let p10 = Preguntas.init(id: 10, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta:"Haz como si estuvieras triste y lloraras" )
        let p11 = Preguntas.init(id: 11, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "Gira 10 veces sobre ti mismo e intenta andar derecho")
        let p12 = Preguntas.init(id: 12, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "Canta como un rapero" )
        let p13 = Preguntas.init(id: 13, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "Los demás jugadores deben dibujarte un bigote" )
        let p14 = Preguntas.init(id: 14, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "Los demás jugadores deben envolverte en papel higiénico")
        let p15 = Preguntas.init(id: 15, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "Imita a una persona vieja")
        let p16 = Preguntas.init(id: 16, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "Envía un SMS utilizando tu nariz únicamente")
        let p17 = Preguntas.init(id: 17, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "Imita a tu padre" )
        let p18 = Preguntas.init(id: 18, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "Mantén una cuchara en equilibrio sobre tu nariz durante diez segundos" )
        let p19 = Preguntas.init(id: 19, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "Después de cada frase debes decir “¡Es verdaderamente genial! durante 10 turnos" )
        let p20 = Preguntas.init(id: 20, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "Sal fuera y échate un cubo de agua helada por la cabeza" )
        let p21 = Preguntas.init(id: 21, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "Habla sin mover los labios durante 10 turnos")
        let p22 = Preguntas.init(id: 22, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "Camina como cangrejo " )
        let p23 = Preguntas.init(id: 23, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta:"Imita a Belinda estrellandose una manzana en la cara" )
        let p24 = Preguntas.init(id: 24, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "Canta tu canción preferida con voz divertida")
        let p25 = Preguntas.init(id: 25, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "Imita el acento africano" )
        let p26 = Preguntas.init(id: 26, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "Baila la canción que han escogido los demás" )
        let p27 = Preguntas.init(id: 27, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta:"Imita a un pájaro" )
        let p28 = Preguntas.init(id: 28, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "Dale un beso en la mejilla del jugador que tienes enfrente")
        let p29 = Preguntas.init(id: 29, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "Baila una danza oriental durante 3 minutos" )
        let p30 = Preguntas.init(id: 30, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "Imita a un gato durante 40 segundos" )
        
        
        //  retos Amigables
        let amigable1 = Preguntas.init(id: 1, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:  "Ponte la ropa al revés")
        let amigable2 = Preguntas.init(id: 2, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "Termínate el vaso si tienes uno")
        let amigable3 = Preguntas.init(id: 3, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "Alguien te besa cuando tienes lo ojos cerrados. Debes adivinar quien es.")
        let amigable4 = Preguntas.init(id: 4, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "Baila durante un minuto delante de todo el mundo")
        let amigable5 = Preguntas.init(id: 5, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "Véndate los ojos durante diez minutos" )
        let amigable6 = Preguntas.init(id: 6, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "Masajea la espalda durante cinco minutos a la persona de tu derecha")
        let amigable7 = Preguntas.init(id: 7, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "Improvisa un rap durante dos minutos")
        let amigable8 = Preguntas.init(id: 8, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "Recita el alfabeto al revés tan rápido como te sea posible")
        let amigable9 = Preguntas.init(id: 9, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:  "Cierra los ojos, gira sobre ti mismo durante 10 minutos y besa a la persona de enfrente tuyo")
        let amigable10 = Preguntas.init(id: 10, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "Publica en una red social: Amo a [nombre de la persona que más odias]" )
        let amigable11 = Preguntas.init(id: 11, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:"Lame la planta del pie de uno de los jugadores." )
        let amigable12 = Preguntas.init(id: 12, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:"Lame la espalda del jugador que está a tu lado derecho.")
        let amigable13 = Preguntas.init(id: 13, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:  "Dale un me gusta a la foto de Instagram de la persona que te gusta.")
        let amigable14 = Preguntas.init(id: 14, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "Recibe una cachetada de cada lado de uno de los jugadores.")
        let amigable15 = Preguntas.init(id: 15, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "Mójate el cabello y canta y baila frente a todos Loca de Shakira.")
        let amigable16 = Preguntas.init(id: 16, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "Tomate una foto haciendo muecas.")
        let amigable17 = Preguntas.init(id: 17, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "Haz 20 abdominales seguidos!" )
        let amigable18 = Preguntas.init(id: 18, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "Ve a la calle y abraza a un poste y tomate una foto")
        let amigable19 = Preguntas.init(id: 19, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "El de tu izquierda te tiene que depilar el brazo con lo que tenga.")
        let amigable20 = Preguntas.init(id: 20, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "Publica en las redes: Hago petes y tu número celular.")
        let amigable21 = Preguntas.init(id: 21, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:  "Dale un beso a la persona de la izquierda!")
        let amigable22 = Preguntas.init(id: 22, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "Cuanta tu primera vez." )
        let amigable23 = Preguntas.init(id: 23, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:"Tómate una foto en la que salgas muy fe@ y envíasela a la persona que te gusta." )
        let amigable24 = Preguntas.init(id: 24, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:"Dale un beso en el ombligo a uno de los jugadores.")
        let amigable25 = Preguntas.init(id: 25, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:  "Publica en tus redes sociales que estás caliente.")
        let amigable26 = Preguntas.init(id: 26, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "Sostén un hielo con tus labios y pásaselo por la espalda al jugador que mencionaste.")
        let amigable27 = Preguntas.init(id: 27, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "Lame los pies de otro jugador.")
        let amigable28 = Preguntas.init(id: 28, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "Dale un abrazo a la jugadora más feo")
        let amigable29 = Preguntas.init(id: 29, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "Llama por teléfono a la casa de un extraño y di: -Mi amor, estoy embarazada" )
        let amigable30 = Preguntas.init(id: 30, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "Mira un video porno en frente de todos los jugadores.")
        let amigable31 = Preguntas.init(id: 31, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "Revela el nombre de la persona con la que tuviste sexo.")
        let amigable32 = Preguntas.init(id: 32, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "Tómate una foto sexy y mándasela a un  amigo.")
        let amigable33 = Preguntas.init(id: 33, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:  "Pregúntale a alguien por whatsapp si quiere ser tú novia.")
        let amigable34 = Preguntas.init(id: 34, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "Pregúntale a alguien por whatsapp si quiere ser tú novio." )
        let amigable35 = Preguntas.init(id: 35, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:"Dile a tu mejor amiga que sales con su novio." )
        let amigable36 = Preguntas.init(id: 36, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:"Recrea una escena de harry potter la ayuda de otro jugador.")
        
        // retos prendas
        let s1 = Preguntas.init(id: 1, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Quítale un calcetines de la persona de tu lado derecho con los dientes")
        let s2 = Preguntas.init(id: 2, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Quítale un calcetines de la persona de tu lado izquierdo con los dientes")
        let s3 = Preguntas.init(id: 3, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Escoge un jugador y quitale una prenda visible ")
        let s4 = Preguntas.init(id: 4, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Debes quitarte la prenda que el jugador de endrente decida")
        let s5 = Preguntas.init(id: 5, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Quitale al jugador de la izquierda una prenda")
        let s6 = Preguntas.init(id: 6, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Quitale al jugador de la derecha una prenda ")
        let s7 = Preguntas.init(id: 7, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Intercambia zapatos con el jugador de enfrente ")
        let s8 = Preguntas.init(id: 8, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Intercambia una prenda de un jugador por la prenda de otro jugador")
        let s9 = Preguntas.init(id: 9, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Durante 5 turnos estas a salvo de que te quiten prendas")
        let s10 = Preguntas.init(id: 10, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "El jugador con menos ropa puede quitarle una prenda a otro jugador")
        let s11 = Preguntas.init(id: 11, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Intercambia playera con el jugador de la derecha")
        let s12 = Preguntas.init(id: 12, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Intercambia un calcetin con quien tu quieras ")
        let s13 = Preguntas.init(id: 13, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "La persona que tenga cinturon debe quitarse 2 prendas")
        let s14 = Preguntas.init(id: 14, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Intercambia pantalones con el jugador de tu izquierda")
        let s15 = Preguntas.init(id: 15, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Dale al jugador de tu derecha la prenda que tu gustes")
        let s16 = Preguntas.init(id: 16, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Todos deben regresarte tu ropa que te pertenece")
        let s17 = Preguntas.init(id: 17, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Regresa toda la ropa que no es tuya ")
        let s18 = Preguntas.init(id: 18, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Reta a alguien a un piedra papel o tijera . El perdedor pierde una prenda")
        let s19 = Preguntas.init(id: 19, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Reta a alguien a un piedra papel o tijera . El perdedor pierde dos prendas")
        let s20 = Preguntas.init(id: 20, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "No te pueden quitar prendas despues de 2 turnos tuyos")
        let s21 = Preguntas.init(id: 21, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Intercambia zapatos con el jugador mas joven")
        let s22 = Preguntas.init(id: 22, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Usa una prenda como bufanda")
        let s23 = Preguntas.init(id: 23, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Usa una prenda como sombrero")
        let s24 = Preguntas.init(id: 24, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Debes dar 2 prendas a quien tu desees")
        let s25 = Preguntas.init(id: 25, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Debes dar una prenda a quien tu desees")
        let s26 = Preguntas.init(id: 26, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Quitale una prenda a un jugador")
        let s27 = Preguntas.init(id: 27, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Quitale una prenda a un jugador")
        let s28 = Preguntas.init(id: 28, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Quitale una prenda a un jugador")
        let s29 = Preguntas.init(id: 29, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Quitale una prenda a un jugador")
        let s30 = Preguntas.init(id: 30, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Quitale una prenda a un jugador")
        let s31 = Preguntas.init(id: 31, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Quitale una prenda a un jugador")
        let s32 = Preguntas.init(id: 32, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "Quitale una prenda a un jugador")
        
        // Retos prohibidas
        let ph1 = Preguntas.init(id: 1, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "Cierra los ojos, gira sobre ti mismo durante 10 minutos y besa a la persona de enfrente tuyo")
        let ph2 = Preguntas.init(id: 2, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "Enviarle un texto a tu novio y termina la relación con una falsa excusa.")
        let ph3 = Preguntas.init(id: 3, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "Llama a tu ex y decirle que lo/a extrañas.")
        let ph4 = Preguntas.init(id: 4, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "Muerde el labio de uno de los jugadores (suavecito!)")
        let ph5 = Preguntas.init(id: 5, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "Quítate toda la ropa y quédate en calzoncillos.")
        let ph6 = Preguntas.init(id: 6, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "Recrea una escena porno con ropa con la ayuda de otro jugador.")
        let ph7 = Preguntas.init(id: 7, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "")
        let ph8 = Preguntas.init(id: 8, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "")
        let ph9 = Preguntas.init(id: 9, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "")
        let ph10 = Preguntas.init(id: 10, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "")
        let ph11 = Preguntas.init(id: 11, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "")
        let ph12 = Preguntas.init(id: 12, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "")
        let ph13 = Preguntas.init(id: 13, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "")
        let ph14 = Preguntas.init(id: 14, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "")
        let ph15 = Preguntas.init(id: 15, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "")
        let ph16 = Preguntas.init(id: 16, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "")
        let ph17 = Preguntas.init(id: 17, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "")
        let ph18 = Preguntas.init(id: 18, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "")
        let ph19 = Preguntas.init(id: 19, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "")
        let ph20 = Preguntas.init(id: 20, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "")
        let ph21 = Preguntas.init(id: 21, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "")
        let ph22 = Preguntas.init(id: 22, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "")
        let ph23 = Preguntas.init(id: 23, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "")
        let ph24 = Preguntas.init(id: 24, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "")
        let ph25 = Preguntas.init(id: 25, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "")
        let ph26 = Preguntas.init(id: 26, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "")
        let ph27 = Preguntas.init(id: 27, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "")
        let ph28 = Preguntas.init(id: 28, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "")
        let ph29 = Preguntas.init(id: 29, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "")
        let ph30 = Preguntas.init(id: 30, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "")
        let ph31 = Preguntas.init(id: 31, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "")
        let ph32 = Preguntas.init(id: 32, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "")
        
        
        //retos amigables
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
        self.preguntas.append(p14)
        self.preguntas.append(p15)
        self.preguntas.append(p16)
        self.preguntas.append(p17)
        self.preguntas.append(p18)
        self.preguntas.append(p19)
        self.preguntas.append(p20)
        self.preguntas.append(p21)
        self.preguntas.append(p22)
        self.preguntas.append(p23)
        self.preguntas.append(p24)
        self.preguntas.append(p25)
        self.preguntas.append(p26)
        self.preguntas.append(p27)
        self.preguntas.append(p28)
        self.preguntas.append(p29)
        self.preguntas.append(p30)
        
        
        
        //
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
        self.preguntas.append(amigable13)
        self.preguntas.append(amigable14)
        self.preguntas.append(amigable15)
        self.preguntas.append(amigable16)
        self.preguntas.append(amigable17)
        self.preguntas.append(amigable18)
        self.preguntas.append(amigable19)
        self.preguntas.append(amigable20)
        self.preguntas.append(amigable21)
        self.preguntas.append(amigable22)
        self.preguntas.append(amigable23)
        self.preguntas.append(amigable24)
        self.preguntas.append(amigable25)
        self.preguntas.append(amigable26)
        self.preguntas.append(amigable27)
        self.preguntas.append(amigable28)
        self.preguntas.append(amigable29)
        self.preguntas.append(amigable30)
        self.preguntas.append(amigable31)
        self.preguntas.append(amigable32)
        self.preguntas.append(amigable33)
        self.preguntas.append(amigable34)
        self.preguntas.append(amigable35)
        self.preguntas.append(amigable36)
        
        
        
        
        //
        self.preguntas.append(s1)
        self.preguntas.append(s2)
        self.preguntas.append(s3)
        self.preguntas.append(s4)
        self.preguntas.append(s5)
        self.preguntas.append(s6)
        self.preguntas.append(s7)
        self.preguntas.append(s8)
        self.preguntas.append(s9)
        self.preguntas.append(s10)
        self.preguntas.append(s11)
        self.preguntas.append(s12)
        self.preguntas.append(s13)
        self.preguntas.append(s14)
        self.preguntas.append(s15)
        self.preguntas.append(s16)
        self.preguntas.append(s17)
        self.preguntas.append(s18)
        self.preguntas.append(s19)
        self.preguntas.append(s20)
        self.preguntas.append(s21)
        self.preguntas.append(s22)
        self.preguntas.append(s23)
        self.preguntas.append(s24)
        self.preguntas.append(s25)
        self.preguntas.append(s26)
        self.preguntas.append(s27)
        self.preguntas.append(s28)
        self.preguntas.append(s29)
        self.preguntas.append(s30)
        self.preguntas.append(s31)
        self.preguntas.append(s32)
        
        
        
        
        //
        self.preguntas.append(ph1)
        self.preguntas.append(ph2)
        self.preguntas.append(ph3)
        self.preguntas.append(ph4)
        self.preguntas.append(ph5)
        self.preguntas.append(ph6)
        self.preguntas.append(ph7)
        self.preguntas.append(ph8)
        self.preguntas.append(ph9)
        self.preguntas.append(ph10)
        self.preguntas.append(ph11)
        self.preguntas.append(ph12)
        self.preguntas.append(ph13)
        self.preguntas.append(ph14)
        self.preguntas.append(ph15)
        self.preguntas.append(ph16)
        self.preguntas.append(ph17)
        self.preguntas.append(ph18)
        self.preguntas.append(ph19)
        self.preguntas.append(ph20)
        self.preguntas.append(ph21)
        self.preguntas.append(ph22)
        self.preguntas.append(ph23)
        self.preguntas.append(ph24)
        self.preguntas.append(ph25)
        self.preguntas.append(ph26)
        self.preguntas.append(ph27)
        self.preguntas.append(ph28)
        self.preguntas.append(ph29)
        self.preguntas.append(ph30)
        self.preguntas.append(ph31)
        self.preguntas.append(ph32)
        
        
        
        
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
