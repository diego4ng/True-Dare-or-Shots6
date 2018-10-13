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
        let p1 = Preguntas.init(id: 1, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nPela un plátano con los pies.")
        let p2 = Preguntas.init(id: 2, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nImita a un robot.")
        let p3 = Preguntas.init(id: 3, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nRecita el alfabeto al revés.")
        let p4 = Preguntas.init(id: 4, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nToca el timbre de tu vecino para pedirle papel higiénico." )
        let p5 = Preguntas.init(id: 5, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nImita tu escena de película preferida." )
        let p6 = Preguntas.init(id: 6, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nNo parpadees durante un minuto." )
        let p7 = Preguntas.init(id: 7, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nCon los ojos vendados dibuja el animal que hayan escogido los demás." )
        let p8 = Preguntas.init(id: 8, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nEnvía un mensaje de texto que diga “¡Feliz Año!”a tus contactos.")
        let p9 = Preguntas.init(id: 9, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nImita a un burro." )
        let p10 = Preguntas.init(id: 10, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta:"RETO INOCENTE\n\nHaz como si estuvieras triste y lloraras." )
        let p11 = Preguntas.init(id: 11, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nGira 10 veces sobre ti mismo e intenta andar derecho.")
        let p12 = Preguntas.init(id: 12, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nCanta como un rapero." )
        let p13 = Preguntas.init(id: 13, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nLos demás jugadores deben dibujarte un bigote." )
        let p14 = Preguntas.init(id: 14, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nLos demás jugadores deben envolverte en papel higiénico.")
        let p15 = Preguntas.init(id: 15, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nImita a una persona vieja.")
        let p16 = Preguntas.init(id: 16, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nEnvía un SMS utilizando tu nariz únicamente.")
        let p17 = Preguntas.init(id: 17, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nImita a tu padre." )
        let p18 = Preguntas.init(id: 18, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nMantén una cuchara en equilibrio sobre tu nariz durante diez segundos." )
        let p19 = Preguntas.init(id: 19, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nDespués de cada frase debes decir “¡Es verdaderamente genial! durante 10 turnos." )
        let p20 = Preguntas.init(id: 20, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nSal fuera y échate un vaso de agua helada por la cabeza." )
        let p21 = Preguntas.init(id: 21, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nHabla sin mover los labios durante 10 turnos.")
        let p22 = Preguntas.init(id: 22, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nCamina como cangrejo. " )
        let p23 = Preguntas.init(id: 23, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta:"RETO INOCENTE\n\nImita a Belinda estrellandose una manzana en la cara." )
        let p24 = Preguntas.init(id: 24, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nCanta tu canción preferida con voz divertida.")
        let p25 = Preguntas.init(id: 25, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nImita el acento africano." )
        let p26 = Preguntas.init(id: 26, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nBaila la canción que han escogido los demás." )
        let p27 = Preguntas.init(id: 27, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta:"RETO INOCENTE\n\nImita a un pájaro." )
        let p28 = Preguntas.init(id: 28, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nDale un beso en la mejilla del jugador que tienes enfrente.")
        let p29 = Preguntas.init(id: 29, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nBaila una danza oriental durante 3 minutos." )
        let p30 = Preguntas.init(id: 30, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nImita a un gato durante 40 segundos." )
        let p31 = Preguntas.init(id: 31, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nMantén un vaso de plástico lleno de agua sobre tu cabeza durante 5 min." )
        let p32 = Preguntas.init(id: 32, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nTodo lo que digas en los siguientes 15 minutos debe ser cantado con el tono -Feliz cumpleaños." )
        let p33 = Preguntas.init(id: 33, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nBaila como loco sin musica." )
        let p34 = Preguntas.init(id: 34, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nDeja que la persona mas vieja del juego dibuje lo que quiera en tu cara y dejálo para el resto del juego" )
        let p35 = Preguntas.init(id: 35, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nDi una verdad y un reto que no harías" )
        let p36 = Preguntas.init(id: 36, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nMira con viscos a todo el mundo durante 3 segundos" )
        let p37 = Preguntas.init(id: 37, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nChifla tu canción favorita" )
        let p38 = Preguntas.init(id: 38, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nImita a una persona en esta sala y deja que las otras personas adivinen quién eres!" )
        let p39 = Preguntas.init(id: 39, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nImita a una persona famosa de la televisión" )
        let p40 = Preguntas.init(id: 40, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nIntenta lamer tu codo mientras cantas el alfabeto" )
        let p41 = Preguntas.init(id: 41, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nHaz el baile de Michael Jackson por la habitación" )
        let p42 = Preguntas.init(id: 42, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nFinje que comes un helado durante 2 minutos" )
        let p43 = Preguntas.init(id: 43, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nCanta opera hasta que un jugador sonria" )
        let p44 = Preguntas.init(id: 44, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nBaila con un trapeador o una escoba por 3 min " )
        let p45 = Preguntas.init(id: 45, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nBaila breakdance" )
        let p46 = Preguntas.init(id: 46, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nPor el resto de la noche pide permiso cuando quieras ir al baño" )
        let p47 = Preguntas.init(id: 47, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nBaila como vaquero" )
        let p48 = Preguntas.init(id: 48, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nParate como un perro hasta tu siguiente turno" )
        let p49 = Preguntas.init(id: 49, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nTrata de que la persona a tu lado ría" )
        let p50 = Preguntas.init(id: 50, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nHaz cara como si estuvieras enojado" )
        let p51 = Preguntas.init(id: 51, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nCanta 30 segundos de tu canción favorita" )
        let p52 = Preguntas.init(id: 52, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nDa una clase de yoga durante 2 minutos" )
        let p53 = Preguntas.init(id: 53, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nPermite que otro jugador dibuje un bigote en ti " )
        let p54 = Preguntas.init(id: 54, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nMuerde un cubo de Hielo" )
        let p55 = Preguntas.init(id: 55, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nHabla con un acento francés para el resto del juego" )
        let p56 = Preguntas.init(id: 56, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nPresenta el clima durante 1 minuto" )
        let p57 = Preguntas.init(id: 57, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nSientate al estilo de Buda hasta tu próximo turno!" )
        let p58 = Preguntas.init(id: 58, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nBaila como una bailarina" )
        let p59 = Preguntas.init(id: 59, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nActua como un gorila durante 1 minuto" )
        let p60 = Preguntas.init(id: 60, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nAbraza un árbol y tomate una foto" )
        let p61 = Preguntas.init(id: 61, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nHaz una danza hawaiana" )
        let p62 = Preguntas.init(id: 62, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nHaz el baile del pollo" )
        let p63 = Preguntas.init(id: 63, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nSelecciona a un amigo ,deberán actuar la escena loca de una película" )
        let p64 = Preguntas.init(id: 64, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nImita una rana durnte 30 segundos" )
        let p65 = Preguntas.init(id: 65, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nAl final del juego deberás limpiar los trastes" )
        let p66 = Preguntas.init(id: 66, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nDurante las siguientes 3 rondas tienes que moverte en cámara lenta." )
        let p67 = Preguntas.init(id: 67, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nActua un anuncio comercial en particular" )
        let p68 = Preguntas.init(id: 68, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nNo puedes decir si o no por el resto del juego" )
        let p69 = Preguntas.init(id: 69, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nPermite que el jugador de la derecha te dibuje una falsa uni-ceja" )
        let p70 = Preguntas.init(id: 70, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nCanta una canción de un tema de programa de televisión de tu elección" )
        let p71 = Preguntas.init(id: 71, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nHaz un sombrero de papel higiénico-Llevalo hasta tu siguiente turno" )
        let p72 = Preguntas.init(id: 72, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nTrata de rascarte la axila con el dedo gordo del pie" )
        let p73 = Preguntas.init(id: 73, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nQue te haga cosquillas el jugador de tu derecha por 30 segundos" )
        let p74 = Preguntas.init(id: 74, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nIntenta pararte de cabeza" )
        let p75 = Preguntas.init(id: 75, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nHábrete de piernas como Van Dame y ve que tanto puedes abrirlas" )
        let p76 = Preguntas.init(id: 76, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nVe y acuéstate en el suelo por las próximas 3 rondas" )
        let p77 = Preguntas.init(id: 77, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nRonca como un cerdo" )
        let p78 = Preguntas.init(id: 78, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nDa vueltas en círculos durante 2 minutos sin parar" )
        let p79 = Preguntas.init(id: 79, status: true, categoria: .Reto, subcategoria:.Inocentes, pregunta: "RETO INOCENTE\n\nPonte de rodillas y actua como cerdo durante 10 segundos" )
        
        //  retos Amigables
        let amigable1 = Preguntas.init(id: 1, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:  "RETO AMIGABLE\n\nPonte la ropa al revés")
        let amigable2 = Preguntas.init(id: 2, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "RETO AMIGABLE\n\nTermínate el vaso si tienes uno")
        let amigable3 = Preguntas.init(id: 3, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "RETO AMIGABLE\n\nAlguien te besa cuando tienes lo ojos cerrados. Debes adivinar quien es.")
        let amigable4 = Preguntas.init(id: 4, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "RETO AMIGABLE\n\nBaila durante un minuto delante de todo el mundo")
        let amigable5 = Preguntas.init(id: 5, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "RETO AMIGABLE\n\nVéndate los ojos durante diez minutos" )
        let amigable6 = Preguntas.init(id: 6, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "RETO AMIGABLE\n\nMasajea la espalda durante cinco minutos a la persona de tu derecha")
        let amigable7 = Preguntas.init(id: 7, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "RETO AMIGABLE\n\nImprovisa un rap durante dos minutos")
        let amigable8 = Preguntas.init(id: 8, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "RETO AMIGABLE\n\nRecita el alfabeto al revés tan rápido como te sea posible")
        let amigable9 = Preguntas.init(id: 9, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:  "RETO AMIGABLE\n\nCierra los ojos, gira sobre ti mismo durante 10 minutos y besa a la persona de enfrente tuyo")
        let amigable10 = Preguntas.init(id: 10, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "RETO AMIGABLE\n\nPublica en una red social: Amo a [nombre de la persona que más odias]" )
        let amigable11 = Preguntas.init(id: 11, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:"RETO AMIGABLE\n\nLame la planta del pie de uno de los jugadores." )
        let amigable12 = Preguntas.init(id: 12, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:"RETO AMIGABLE\n\nLame la espalda del jugador que está a tu lado derecho.")
        let amigable13 = Preguntas.init(id: 13, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:  "RETO AMIGABLE\n\nDale un me gusta a la foto de Instagram de la persona que te gusta.")
        let amigable14 = Preguntas.init(id: 14, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "RETO AMIGABLE\n\nRecibe una cachetada de cada lado de uno de los jugadores.")
        let amigable15 = Preguntas.init(id: 15, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "RETO AMIGABLE\n\nMójate el cabello y canta y baila frente a todos Loca de Shakira.")
        let amigable16 = Preguntas.init(id: 16, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "RETO AMIGABLE\n\nTomate una foto haciendo muecas.")
        let amigable17 = Preguntas.init(id: 17, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "RETO AMIGABLE\n\nHaz 20 abdominales seguidos!" )
        let amigable18 = Preguntas.init(id: 18, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "RETO AMIGABLE\n\nVe a la calle y abraza a un poste y tomate una foto")
        let amigable19 = Preguntas.init(id: 19, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "RETO AMIGABLE\n\nEl de tu izquierda te tiene que depilar el brazo con lo que tenga.")
        let amigable20 = Preguntas.init(id: 20, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "RETO AMIGABLE\n\nPublica en las redes: Hago petes y tu número celular.")
        let amigable21 = Preguntas.init(id: 21, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:  "RETO AMIGABLE\n\nDale un beso a la persona de la izquierda!")
        let amigable22 = Preguntas.init(id: 22, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "RETO AMIGABLE\n\nCuanta tu primera vez." )
        let amigable23 = Preguntas.init(id: 23, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:"RETO AMIGABLE\n\nTómate una foto en la que salgas muy fe@ y envíasela a la persona que te gusta." )
        let amigable24 = Preguntas.init(id: 24, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:"RETO AMIGABLE\n\nDale un beso en el ombligo a uno de los jugadores.")
        let amigable25 = Preguntas.init(id: 25, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:  "RETO AMIGABLE\n\nPublica en tus redes sociales que estás caliente.")
        let amigable26 = Preguntas.init(id: 26, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "RETO AMIGABLE\n\nSostén un hielo con tus labios y pásaselo por la espalda al jugador que mencionaste.")
        let amigable27 = Preguntas.init(id: 27, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "RETO AMIGABLE\n\nLame los pies de otro jugador.")
        let amigable28 = Preguntas.init(id: 28, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "RETO AMIGABLE\n\nDale un abrazo a la jugadora más feo")
        let amigable29 = Preguntas.init(id: 29, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "RETO AMIGABLE\n\nLlama por teléfono a la casa de un extraño y di: -Mi amor, estoy embarazada" )
        let amigable30 = Preguntas.init(id: 30, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "RETO AMIGABLE\n\nMira un video porno en frente de todos los jugadores.")
        let amigable31 = Preguntas.init(id: 31, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "RETO AMIGABLE\n\nRevela el nombre de la persona con la que tuviste sexo.")
        let amigable32 = Preguntas.init(id: 32, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "RETO AMIGABLE\n\nTómate una foto sexy y mándasela a un  amigo.")
        let amigable33 = Preguntas.init(id: 33, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:  "RETO AMIGABLE\n\nPregúntale a alguien por whatsapp si quiere ser tú novia.")
        let amigable34 = Preguntas.init(id: 34, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta: "RETO AMIGABLE\n\nPregúntale a alguien por whatsapp si quiere ser tú novio." )
        let amigable35 = Preguntas.init(id: 35, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:"RETO AMIGABLE\n\nDile a tu mejor amiga que sales con su novio." )
        let amigable36 = Preguntas.init(id: 36, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:"RETO AMIGABLE\n\nRecrea una escena de harry potter la ayuda de otro jugador.")
         let amigable37 = Preguntas.init(id: 37, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:"RETO AMIGABLE\n\nDate un masaje sensual")
//        let amigable36 = Preguntas.init(id: 36, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:"")
//        let amigable36 = Preguntas.init(id: 36, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:"")
//        let amigable36 = Preguntas.init(id: 36, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:"")
//        let amigable36 = Preguntas.init(id: 36, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:"")
//        let amigable36 = Preguntas.init(id: 36, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:"")
//        let amigable36 = Preguntas.init(id: 36, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:"")
//        let amigable36 = Preguntas.init(id: 36, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:"")
//        let amigable36 = Preguntas.init(id: 36, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:"")
//        let amigable36 = Preguntas.init(id: 36, status: true, categoria: .Reto, subcategoria:.Amigables, pregunta:"")
        
        // retos prendas
        let s1 = Preguntas.init(id: 1, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nQuítale un calcetines de la persona de tu lado derecho con los dientes")
        let s2 = Preguntas.init(id: 2, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nQuítale un calcetines de la persona de tu lado izquierdo con los dientes")
        let s3 = Preguntas.init(id: 3, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nEscoge un jugador y quitale una prenda visible ")
        let s4 = Preguntas.init(id: 4, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nDebes quitarte la prenda que el jugador de endrente decida")
        let s5 = Preguntas.init(id: 5, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nQuitale al jugador de la izquierda una prenda")
        let s6 = Preguntas.init(id: 6, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nQuitale al jugador de la derecha una prenda ")
        let s7 = Preguntas.init(id: 7, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nIntercambia zapatos con el jugador de enfrente ")
        let s8 = Preguntas.init(id: 8, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nIntercambia una prenda de un jugador por la prenda de otro jugador")
        let s9 = Preguntas.init(id: 9, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nDurante 5 turnos estas a salvo de que te quiten prendas")
        let s10 = Preguntas.init(id: 10, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nEl jugador con menos ropa puede quitarle una prenda a otro jugador")
        let s11 = Preguntas.init(id: 11, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nIntercambia playera con el jugador de la derecha")
        let s12 = Preguntas.init(id: 12, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nIntercambia un calcetin con quien tu quieras ")
        let s13 = Preguntas.init(id: 13, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nLa persona que tenga cinturon debe quitarse 2 prendas")
        let s14 = Preguntas.init(id: 14, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nIntercambia pantalones con el jugador de tu izquierda")
        let s15 = Preguntas.init(id: 15, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nDale al jugador de tu derecha la prenda que tu gustes")
        let s16 = Preguntas.init(id: 16, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nTodos deben regresarte tu ropa que te pertenece")
        let s17 = Preguntas.init(id: 17, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nRegresa toda la ropa que no es tuya ")
        let s18 = Preguntas.init(id: 18, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nReta a alguien a un piedra papel o tijera . El perdedor pierde una prenda")
        let s19 = Preguntas.init(id: 19, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nReta a alguien a un piedra papel o tijera . El perdedor pierde dos prendas")
        let s20 = Preguntas.init(id: 20, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nNo te pueden quitar prendas despues de 2 turnos tuyos")
        let s21 = Preguntas.init(id: 21, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nIntercambia zapatos con el jugador mas joven")
        let s22 = Preguntas.init(id: 22, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nUsa una prenda como bufanda")
        let s23 = Preguntas.init(id: 23, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nUsa una prenda como sombrero")
        let s24 = Preguntas.init(id: 24, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nDebes dar 2 prendas a quien tu desees")
        let s25 = Preguntas.init(id: 25, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nDebes dar una prenda a quien tu desees")
        let s26 = Preguntas.init(id: 26, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nQuitale una prenda a un jugador")
        let s27 = Preguntas.init(id: 27, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nQuitale una prenda a un jugador")
        let s28 = Preguntas.init(id: 28, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nQuitale una prenda a un jugador")
        let s29 = Preguntas.init(id: 29, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nQuitale una prenda a un jugador")
        let s30 = Preguntas.init(id: 30, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nQuitale una prenda a un jugador")
        let s31 = Preguntas.init(id: 31, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nQuitale una prenda a un jugador")
        let s32 = Preguntas.init(id: 32, status: true, categoria: .Reto, subcategoria:.Prendas, pregunta:  "RETO DE PRENDA\n\nQuitale una prenda a un jugador")
        
        // Retos prohibidas
        let ph1 = Preguntas.init(id: 1, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nCierra los ojos, gira sobre ti mismo durante 10 minutos y besa a la persona de enfrente tuyo")
        let ph2 = Preguntas.init(id: 2, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nEnviarle un texto a tu novio y termina la relación con una falsa excusa.")
        let ph3 = Preguntas.init(id: 3, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nLlama a tu ex y decirle que lo/a extrañas.")
        let ph4 = Preguntas.init(id: 4, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nMuerde el labio de uno de los jugadores (suavecito!)")
        let ph5 = Preguntas.init(id: 5, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nQuítate toda la ropa y quédate en calzoncillos.")
        let ph6 = Preguntas.init(id: 6, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nRecrea una escena porno con ropa con la ayuda de otro jugador.")
        let ph7 = Preguntas.init(id: 7, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nMantén un vaso de plástico lleno de agua sobre tu cabeza durante 4 min. En caso de no lograrlo deberas publicar una foto como si te fueran a dar cinturonazos")
        let ph8 = Preguntas.init(id: 8, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nElige a 2 personas que se besen. Si no lo hacen deberán tomarse un shot de lo que tu decidas")
        let ph9 = Preguntas.init(id: 9, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nBesa el trasero de un jugador. Si no recibe un zape por todos")
        let ph10 = Preguntas.init(id: 10, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nActua como perro por 2 minutos")
        let ph11 = Preguntas.init(id: 11, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nIntenta hacer reir a un jugador , en caso de no hacerlo , recibe un cinturonazo")
        let ph12 = Preguntas.init(id: 12, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nCierra los ojos mientras que el grupo pone algo comestible no toxico que debeás comer")
        let ph13 = Preguntas.init(id: 13, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nRetira 5 articulos de ropa y mantenlos fuera de la habitación por 4 turnos consecutivos")
        let ph14 = Preguntas.init(id: 14, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nReta a un piedra papel o tijera el ganador se puede safar del siguiente reto")
        let ph15 = Preguntas.init(id: 15, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nReta a un piedra papel o tijera el perdedor sera esclavo durante 4 turnos")
        let ph16 = Preguntas.init(id: 16, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nEscoge a una persona para que te pasee como un perro durante 1 minuto")
        let ph17 = Preguntas.init(id: 17, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nHAIL HYDRA - De cabeza el grupo debera introducir tu cabeza en una cubeta con agua por 3 veces consecutiva")
        let ph18 = Preguntas.init(id: 18, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nIntercambia tu vaso con el mas lleno")
        let ph19 = Preguntas.init(id: 19, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nDispajero Grupal , los 2 primeros perdedores lameran los zapatos de los ganadores")
        let ph20 = Preguntas.init(id: 20, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nReta a un piedra papel o tijera el perdedor Lamera 15 cm del suelo")
        let ph21 = Preguntas.init(id: 21, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nReta a un piedra papel o tijera el perdedor Lamera 15 cm de la pared")
        let ph22 = Preguntas.init(id: 22, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nReta a un piedra papel o tijera el perdedor Pondra 5 pesos en el Centro")
        let ph23 = Preguntas.init(id: 23, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nTOMA EL DINERO DEL CENTRO , si no hay debes poner 5 pesos. ")
        let ph24 = Preguntas.init(id: 24, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nSaca un objeto del excusado, En caso de no hacerlo será un cinturonazo")
        let ph25 = Preguntas.init(id: 25, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nCaricachupas presenta nombres de: Pokemon , El perdedor debera ser su pikachu personal")
        let ph26 = Preguntas.init(id: 26, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nPuedes redirigir un Reto durante los siguientes 5 turnos")
        let ph27 = Preguntas.init(id: 27, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nPregúntale a alguien por whatsapp si quiere ser tú novio.Si dice que no marcale e intenta convencerlo durante 5 minutos")
        let ph28 = Preguntas.init(id: 28, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nHaz 20 abdominales seguidos!. Si no lo logra deberá hacer 50 abdominales + 50 lagartijas")
        let ph29 = Preguntas.init(id: 29, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nCaricachupas presenta nombres de estaciones de metro: (cada quien debe mencionar una estación de metro, la persona que repita alguna recibirá un cinturonazo")
        let ph30 = Preguntas.init(id: 30, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nCaricachupas presenta nombres de modelos de telefonos: (cada quien debe mencionar una modelo de telefono, la persona que repita alguna recibirá un cinturonazo")
        let ph31 = Preguntas.init(id: 31, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nCaricachupas presenta nombres de Peliculas de terror: (cada quien debe mencionar una pelicula de terror, la persona que repita alguna recibirá un cinturonazo")
        let ph32 = Preguntas.init(id: 32, status: true, categoria: .Reto, subcategoria:.Ñero, pregunta:  "RETO PROHIBIDO\n\nCaricachupas presenta nombres de refrescos: (cada quien debe mencionar un refresco diferente, la persona que repita alguna recibirá un cinturonazo")
        
        
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
        self.preguntas.append(p31)
        self.preguntas.append(p32)
        self.preguntas.append(p33)
        self.preguntas.append(p34)
        self.preguntas.append(p35)
        self.preguntas.append(p36)
        self.preguntas.append(p37)
        self.preguntas.append(p38)
        self.preguntas.append(p39)
        self.preguntas.append(p40)
        self.preguntas.append(p41)
        self.preguntas.append(p42)
        self.preguntas.append(p43)
        self.preguntas.append(p44)
        self.preguntas.append(p45)
        self.preguntas.append(p46)
        self.preguntas.append(p47)
        self.preguntas.append(p48)
        self.preguntas.append(p49)
        self.preguntas.append(p50)
        self.preguntas.append(p51)
        self.preguntas.append(p52)
        self.preguntas.append(p53)
        self.preguntas.append(p54)
        self.preguntas.append(p55)
        self.preguntas.append(p56)
        self.preguntas.append(p57)
        self.preguntas.append(p58)
        self.preguntas.append(p59)
        self.preguntas.append(p60)
        self.preguntas.append(p61)
        self.preguntas.append(p62)
        self.preguntas.append(p63)
        self.preguntas.append(p64)
        self.preguntas.append(p65)
        self.preguntas.append(p66)
        self.preguntas.append(p67)
        self.preguntas.append(p68)
        self.preguntas.append(p69)
        self.preguntas.append(p70)
        self.preguntas.append(p71)
        self.preguntas.append(p72)
        self.preguntas.append(p73)
        self.preguntas.append(p74)
        self.preguntas.append(p75)
        self.preguntas.append(p76)
        self.preguntas.append(p77)
        self.preguntas.append(p78)
        self.preguntas.append(p79)
       
        
        
        
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
        self.preguntas.append(amigable37)
        
        
        
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
