//
//  categoriasShot.swift
//  True Dare or shots
//
//  Created by Joel Lozano on 08/10/18.
//  Copyright © 2018 diego. All rights reserved.
//

import Foundation


class CategoriasShot{
    
    
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
        case AlgoTranqui
        case Normal
        case Extremo
        case A_morir
    }
    
    var categoria :categories
    var subCategoria: subcategori
    var preguntas = [Preguntas]()
    
    init() {
        categoria = .Reto
        subCategoria = .Amigables
        
        // preguntas Retos ALGo TRANQUI
        let p1 = Preguntas.init(id: 1, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma un sorbo a tu vaso")
        let p2 = Preguntas.init(id: 2, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma dos sorbos a tu vaso")
        let p3 = Preguntas.init(id: 3, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma tres sorbos a tu vaso")
        let p4 = Preguntas.init(id: 4, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma un sorbo del vaso del jugador de tu derecha" )
        let p5 = Preguntas.init(id: 5, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma dos sorbos del vaso del jugador de tu derecha" )
        let p6 = Preguntas.init(id: 6, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma tres sorbos del vaso del jugador de tu derecha" )
        let p7 = Preguntas.init(id: 7, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma un sorbo del vaso del jugador de tu izquierda" )
        let p8 = Preguntas.init(id: 8, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma dos sorbos del vaso del jugador de tu izquierda")
        let p9 = Preguntas.init(id: 9, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma tres sorbos del vaso del jugador de tu izquierda" )
        let p10 = Preguntas.init(id: 10, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta:"ALGO TRANQUI\n\nToma un sorbo a tu vaso" )
        let p11 = Preguntas.init(id: 11, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta:  "ALGO TRANQUI\n\nToma un sorbo a tu vaso")
        let p12 = Preguntas.init(id: 12, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma un sorbo a tu vaso" )
        let p13 = Preguntas.init(id: 13, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma dos sorbos a tu vaso" )
        let p14 = Preguntas.init(id: 14, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma dos sorbos a tu vaso")
        let p15 = Preguntas.init(id: 15, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma dos sorbos a tu vaso")
        let p16 = Preguntas.init(id: 16, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma tres sorbos a tu vaso")
        let p17 = Preguntas.init(id: 17, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma tres sorbos a tu vaso" )
        let p18 = Preguntas.init(id: 18, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma tres sorbos a tu vaso" )
        let p19 = Preguntas.init(id: 19, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma medio vaso del jugador que quieras" )
        let p20 = Preguntas.init(id: 20, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma medio vaso del jugador que quieras" )
        let p21 = Preguntas.init(id: 21, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma medio vaso del jugador que quieras")
        let p22 = Preguntas.init(id: 22, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma 1/4 de vaso del jugador que quieras" )
        let p23 = Preguntas.init(id: 23, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta:"ALGO TRANQUI\n\nToma 1/4 de vaso del jugador que quieras" )
        let p24 = Preguntas.init(id: 24, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta:  "ALGO TRANQUI\n\nToma 1/4 de vaso del jugador que quieras")
        let p25 = Preguntas.init(id: 25, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nIntercambia vasos" )
        let p26 = Preguntas.init(id: 26, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma dos sorbos a tu vaso" )
        let p27 = Preguntas.init(id: 27, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma dos sorbos a tu vaso")
        let p28 = Preguntas.init(id: 28, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma dos sorbos a tu vaso")
        let p29 = Preguntas.init(id: 29, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma dos sorbos a tu vaso")
        let p30 = Preguntas.init(id: 30, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma dos sorbos a tu vaso" )
        let p31 = Preguntas.init(id: 31, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma dos sorbos a tu vaso" )
        let p32 = Preguntas.init(id: 32, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma dos sorbos a tu vaso" )
        let p33 = Preguntas.init(id: 33, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma dos sorbos a tu vaso" )
        let p34 = Preguntas.init(id: 34, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma dos sorbos a tu vaso")
        let p35 = Preguntas.init(id: 35, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma dos sorbos a tu vaso" )
        let p36 = Preguntas.init(id: 36, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta:"ALGO TRANQUI\n\nToma dos sorbos a tu vaso" )
        let p37 = Preguntas.init(id: 37, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta:  "ALGO TRANQUI\n\nToma dos sorbos a tu vaso")
        let p38 = Preguntas.init(id: 38, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma dos sorbos a tu vaso" )
        let p39 = Preguntas.init(id: 39, status: true, categoria: .Shot, subcategoria:.AlgoTranqui, pregunta: "ALGO TRANQUI\n\nToma dos sorbos a tu vaso" )
        
        
        // pregutnas retos Normal
        let amigable1 = Preguntas.init(id: 1, status: true, categoria: .Shot, subcategoria: .Normal, pregunta:  "TRAGOS NORMALES\n\nLa persona que consideren mas guapa deberá tomar un trago")
        let amigable2 = Preguntas.init(id: 2, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nLa persona que consideren que tiene mas dinero deberá tomar un trago")
        let amigable3 = Preguntas.init(id: 3, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nLa persona mas blanca de piel deberá tomar un trago")
        let amigable4 = Preguntas.init(id: 4, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nToma un trago del vaso que tu desees")
        let amigable5 = Preguntas.init(id: 5, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nIntercambia vaso con alguien" )
        let amigable6 = Preguntas.init(id: 6, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nLa persona que traiga jeans toma un trago")
        let amigable7 = Preguntas.init(id: 7, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nLas personas que no tengan novio toman un trago")
        let amigable8 = Preguntas.init(id: 8, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nLas Persoas con novi@ toman un trago")
        let amigable9 = Preguntas.init(id: 9, status: true, categoria: .Shot, subcategoria:.Normal, pregunta:  "TRAGOS NORMALES\n\nLas personas que usan lentes toman un trago")
        let amigable10 = Preguntas.init(id: 10, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nLas personas que tienen trabajo toman un trago" )
        let amigable11 = Preguntas.init(id: 11, status: true, categoria: .Shot, subcategoria:.Normal, pregunta:"TRAGOS NORMALES\n\nLas personas que estudian toman un trago" )
        let amigable12 = Preguntas.init(id: 12, status: true, categoria: .Shot, subcategoria:.Normal, pregunta:"TRAGOS NORMALES\n\nLas personas que tenga algun tatuaje toman un trago")
        let amigable13 = Preguntas.init(id: 13, status: true, categoria: .Shot, subcategoria: .Normal, pregunta:  "TRAGOS NORMALES\n\nLas personas que no tengan tatuajes toamn un trago")
        let amigable14 = Preguntas.init(id: 14, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nLas personas que esten usando tenis toman un trago")
        let amigable15 = Preguntas.init(id: 15, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nLas personas quw traigan ropa negra toman un trago")
        let amigable16 = Preguntas.init(id: 16, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nLas personas que tengan bigote toman un trago")
        let amigable17 = Preguntas.init(id: 17, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nLa persona con mas pelo o cabello toma un trago" )
        let amigable18 = Preguntas.init(id: 18, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nLa persona con menos pelo toma un trago")
        let amigable19 = Preguntas.init(id: 19, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nLa persona que haya nacido en enero toma un trago")
        let amigable20 = Preguntas.init(id: 20, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nLa persona que haya nacido en febrero toma un trago")
        let amigable21 = Preguntas.init(id: 21, status: true, categoria: .Shot, subcategoria:.Normal, pregunta:  "TRAGOS NORMALES\n\nLa persona que haya nacido en Marzo toma un trago")
        let amigable22 = Preguntas.init(id: 22, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nLa persona que haya nacido en Abril toma un trago" )
        let amigable23 = Preguntas.init(id: 23, status: true, categoria: .Shot, subcategoria:.Normal, pregunta:"TRAGOS NORMALES\n\nLa persona que haya nacido en Mayo toma un trago" )
        let amigable24 = Preguntas.init(id: 24, status: true, categoria: .Shot, subcategoria:.Normal, pregunta:"TRAGOS NORMALES\n\nLa persona que haya nacido en Junio toma un trago")
        let amigable25 = Preguntas.init(id: 25, status: true, categoria: .Shot, subcategoria: .Normal, pregunta:  "TRAGOS NORMALES\n\nLa persona que haya nacido en Julio toma un trago")
        let amigable26 = Preguntas.init(id: 26, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nLa persona que haya nacido en Agosto toma un trago")
        let amigable27 = Preguntas.init(id: 27, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nLa persona que haya nacido en Septiembre toma un trago")
        let amigable28 = Preguntas.init(id: 28, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nLa persona que haya nacido en Octubre toma un trago")
        let amigable29 = Preguntas.init(id: 29, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nLa persona que haya nacido en Noviembre toma un trago" )
        let amigable30 = Preguntas.init(id: 30, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nLa persona que haya nacido en Diciembre toma un trago")
        let amigable31 = Preguntas.init(id: 31, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nLa persona a la que le guste el sexo tome un trago")
        let amigable32 = Preguntas.init(id: 32, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nLa persona a la que le gusten los hombres tome trago")
        let amigable33 = Preguntas.init(id: 33, status: true, categoria: .Shot, subcategoria:.Normal, pregunta:  "TRAGOS NORMALES\n\nLa persona a la que le gusten las mujeres tome trago")
        let amigable34 = Preguntas.init(id: 34, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nLa persona a la que no le gusten los perros tome trago" )
        let amigable35 = Preguntas.init(id: 35, status: true, categoria: .Shot, subcategoria:.Normal, pregunta:"TRAGOS NORMALES\n\nLa persona a la que no gusten los gatos tome trago" )
        let amigable36 = Preguntas.init(id: 36, status: true, categoria: .Shot, subcategoria:.Normal, pregunta:"TRAGOS NORMALES\n\nLa ultima persona que haya revisado su celular toma un trago")
        let amigable37 = Preguntas.init(id: 37, status: true, categoria: .Shot, subcategoria: .Normal, pregunta:  "TRAGOS NORMALES\n\nLas personas que esten cargando su celular tomen un trago")
        let amigable38 = Preguntas.init(id: 38, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nLa persona mas cerca de la puerta toma un trago ")
        let amigable39 = Preguntas.init(id: 39, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nLa persona mas lejos de la puerta toma un trago")
        let amigable40 = Preguntas.init(id: 40, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nLa persona que use tenis blancos toma un trago")
        let amigable41 = Preguntas.init(id: 41, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nTodas las mujeres toman un trago" )
        let amigable42 = Preguntas.init(id: 42, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nTodos los hombres toman un trago")
        let amigable43 = Preguntas.init(id: 43, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nLa persona que consideren mas inteligente tomará un trago")
        let amigable44 = Preguntas.init(id: 44, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nLa persona que consideren mas torpe tomará un trago")
        let amigable45 = Preguntas.init(id: 45, status: true, categoria: .Shot, subcategoria:.Normal, pregunta:  "TRAGOS NORMALES\n\nTodos toman un trago")
        let amigable46 = Preguntas.init(id: 46, status: true, categoria: .Shot, subcategoria:.Normal, pregunta: "TRAGOS NORMALES\n\nLa personas que esten sentados toman un trago" )
        let amigable47 = Preguntas.init(id: 47, status: true, categoria: .Shot, subcategoria:.Normal, pregunta:"TRAGOS NORMALES\n\nTomate un trago del vaso del jugador mas joven")
        let amigable48 = Preguntas.init(id: 48, status: true, categoria: .Shot, subcategoria:.Normal, pregunta:"TRAGOS NORMALES\n\nTomate un trago del vaso del jugador mas joven")
        
        // SHOTS EXTREMOS
        let s1 = Preguntas.init(id: 1, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta:Groserias (cada quien debe mencionar una: groseria diferente), la persona que se equivoque Tomará un fondo")
        let s2 = Preguntas.init(id: 2, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta:Posiciones del Kamasutra  (cada quien debe mencionar una:posicion sexual diferente), la persona que se equivoque Tomará un fondo")
        let s3 = Preguntas.init(id: 3, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta:Personajes de Toy Story  (cada quien debe mencionar un:personaje de Toy Story diferente), la persona que se equivoque Tomará un fondo")
        let s4 = Preguntas.init(id: 4, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta:Cantantes famosos  (cada quien debe mencionar un:Cantantes famoso diferente), la persona que se equivoque Tomará un fondo")
        let s5 = Preguntas.init(id: 5, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta nombres de cervezas: (cada quien debe mencionar una cerveza diferente,la persona que se equivoque Tomara un fondo")
        let s6 = Preguntas.init(id: 6, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta nombres de libros: (cada quien debe mencionar un libro diferente), la persona que se equivoque Tomará un fondo")
        let s7 = Preguntas.init(id: 7, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta nombres de personajes de Dragon ball Z: (cada quien debe mencionar un personaje de Dragon Ball Z diferente), la persona que se equivoque Tomará un fondo")
        let s8 = Preguntas.init(id: 8, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta nombres de Animales Acuaticos: (cada quien debe mencionar de Animales Acuaticos diferente), la persona que se equivoque Tomará un fondo")
        let s9 = Preguntas.init(id: 9, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta nombres de Animales que viven en la selva: (cada quien debe mencionar de Animales que viven en la selva diferentes), la persona que se equivoque Tomará un fondo")
        let s10 = Preguntas.init(id: 10, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta nombres de Presidentes de México  (cada quien debe mencionar presidentes de México diferentes), la persona que se equivoque Tomará un fondo")
        let s11 = Preguntas.init(id: 11, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta nombres de Materias que se imparten en la primaria  (cada quien debe mencionar Materias que se imparten en la primaria diferente), la persona que se equivoque Tomará un fondo")
        let s12 = Preguntas.init(id: 12, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta:Redes Sociales  (cada quien debe mencionar: una red social diferente), la persona que se equivoque Tomará un fondo")
        let s13 = Preguntas.init(id: 13, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  " SHOT EXTREMO\n\nCaricachupas presenta: marcas de telefonos  (cada quien debe mencionar: una marca de telefono diferente), la persona que se equivoque Tomará un fondo")
        let s14 = Preguntas.init(id: 14, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta:razas de perros  (cada quien debe mencionar: una raza de perro diferente), la persona que se equivoque Tomará un fondo")
        let s15 = Preguntas.init(id: 15, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta:Animales que encuentras en un zoologico   (cada quien debe mencionar:Animales que encuentras en un zoologico  diferentes), la persona que se equivoque Tomará un fondo")
        let s16 = Preguntas.init(id: 16, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta:Colores   (cada quien debe mencionar:Colores diferentes), la persona que se equivoque Tomará un fondo")
        let s17 = Preguntas.init(id: 17, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta:Alimentos que venden en el cine(cada quien debe mencionar:Alimentos que venden en el cine diferentes), la persona que se equivoque Tomará un fondo")
        let s18 = Preguntas.init(id: 18, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta:Deportes en los que se use guantes(cada quien debe mencionar:Deportes en los que se use guantes diferentes), la persona que se equivoque Tomará un fondo")
        let s19 = Preguntas.init(id: 19, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta:Futbolistas   (cada quien debe mencionar: Futbolistas diferentes), la persona que se equivoque Tomará un fondo")
        let s20 = Preguntas.init(id: 20, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta:Programas de Televisión  (cada quien debe mencionar :Programas de Televisión diferentes), la persona que se equivoque Tomará un fondo")
        let s21 = Preguntas.init(id: 21, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "    SHOT EXTREMO\n\nCaricachupas presenta:Personajes de Hey Arnold   (cada quien debe mencionar :Personajes de Hey Arnold diferentes), la persona que se equivoque Tomará un fondo")
        let s22 = Preguntas.init(id: 22, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta:Letras del Abcedario (cada quien debe mencionar :Letras del Abcedario diferente), la persona que se equivoque Tomará un fondo")
        let s23 = Preguntas.init(id: 23, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta:Profesiones   (cada quien debe mencionar una:Profesion diferente), la persona que se equivoque Tomará un fondo")
        let s24 = Preguntas.init(id: 24, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta:Marca de cigarros   (cada quien debe mencionar una:Marca de cigarros diferente), la persona que se equivoque Tomará un fondo")
        let s25 = Preguntas.init(id: 25, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta:Programas que pasan en el canal 5 (cada quien debe mencionar:Programas que pasan en el canal 5 diferentes), la persona que se equivoque Tomará un fondo")
        let s26 = Preguntas.init(id: 26, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  " SHOT EXTREMO\n\nCaricachupas presenta:Colores de semáforo  (cada quien debe mencionar: diferente), la persona que se equivoque Tomará un fondo")
        let s27 = Preguntas.init(id: 27, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta:pokemon  (cada quien debe mencionar un: pokemon diferente), la persona que se equivoque Tomará un fondo")
        let s28 = Preguntas.init(id: 28, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta:Intrumentos  (cada quien debe mencionar un: instruemento diferente), la persona que se equivoque Tomará un fondo")
        let s29 = Preguntas.init(id: 29, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta:Drogas  (cada quien debe mencionar una:Droga diferente), la persona que se equivoque Tomará un fondo")
        let s30 = Preguntas.init(id: 30, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta:Modelos de Autos (cada quien debe mencionar un:modelo de auto diferente), la persona que se equivoque Tomará un fondo")
        let s31 = Preguntas.init(id: 31, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta:Tacos   (cada quien debe mencionar un:tipo detaco diferente), la persona que se equivoque Tomará un fondo")
        let s32 = Preguntas.init(id: 32, status: true, categoria: .Shot, subcategoria:.Extremo, pregunta:  "SHOT EXTREMO\n\nCaricachupas presenta:Numeros del 1 al 50  (cada quien debe mencionar un:Numero del 1 al 50 diferente ), la persona que se equivoque Tomará un fondo")
        
        
        
        
        // Virus D:
        let ph1 = Preguntas.init(id: 1, status: true, categoria: .Shot, subcategoria:.A_morir, pregunta:  "VIRUS\n\nDebes beber el doble que el jugador de la derecha")
        let ph2 = Preguntas.init(id: 2, status: true, categoria: .Shot, subcategoria:.A_morir, pregunta:  "VIRUS\n\nDebes beebr el doble que el jugador de la izquierda")
        let ph3 = Preguntas.init(id: 3, status: true, categoria: .Shot, subcategoria:.A_morir, pregunta:  "VIRUS\n\nCada vez que digas la palabra NO tomaras un Shot")
        let ph4 = Preguntas.init(id: 4, status: true, categoria: .Shot, subcategoria:.A_morir, pregunta:  "VIRUS\n\nCada vez que digas la palabra SI tomaras un Shot")
        let ph5 = Preguntas.init(id: 5, status: true, categoria: .Shot, subcategoria:.A_morir, pregunta:  "VIRUS\n\nCada vez que digas tu nombre tomaras un Shot")
        let ph6 = Preguntas.init(id: 6, status: true, categoria: .Shot, subcategoria:.A_morir, pregunta:  "VIRUS\n\nCada vez que hagas una pregunta tomaras un Shot")
        let ph7 = Preguntas.init(id: 7, status: true, categoria: .Shot, subcategoria:.A_morir, pregunta:  "VIRUS\n\nCada vez que digas tu nombre tomaras un Shot")
        let ph8 = Preguntas.init(id: 8, status: true, categoria: .Shot, subcategoria:.A_morir, pregunta:  "VIRUS\n\nCada vez que:digas la palabra (PORFAVOR) tomarás un Shot")
        let ph9 = Preguntas.init(id: 9, status: true, categoria: .Shot, subcategoria:.A_morir, pregunta:  "VIRUS\n\nCada vez que:revises tu celular tomarás un Shot")
        let ph10 = Preguntas.init(id: 10, status: true, categoria: .Shot, subcategoria:.A_morir, pregunta:  "VIRUS\n\nCierra un ojo Cada vez que:alguien te descubra con el ojo abierto  tomarás un Shot")
        let ph11 = Preguntas.init(id: 11, status: true, categoria: .Shot, subcategoria:.A_morir, pregunta:  "VIRUS\n\nCierra un puño Cada vez que: alguien te descubra con el puño abierto tomarás un Shot")
        let ph12 = Preguntas.init(id: 12, status: true, categoria: .Shot, subcategoria:.A_morir, pregunta:  "VIRUS\n\nCada vez que:menciones la letra M tomarás un Shot")
        let ph13 = Preguntas.init(id: 13, status: true, categoria: .Shot, subcategoria:.A_morir, pregunta:  "VIRUS\n\nCada vez que:digas la palabra (PORFAVOR) tomarás un Shot")
        let ph14 = Preguntas.init(id: 14, status: true, categoria: .Shot, subcategoria:.A_morir, pregunta:  "VIRUS\n\nCada vez que:digas la palabra (PORFAVOR) tomarás un Shot")
        let ph15 = Preguntas.init(id: 15, status: true, categoria: .Shot, subcategoria:.A_morir, pregunta:  "VIRUS\n\nEL jugador que pase algun objeto ,ejemplo :pasar el refresco. deberá tomar un shot")
        let ph16 = Preguntas.init(id: 16, status: true, categoria: .Shot, subcategoria:.A_morir, pregunta:  "VIRUS\n\nCada vez que:digas una groseria tomarás un Shot")
        let ph17 = Preguntas.init(id: 17, status: true, categoria: .Shot, subcategoria:.A_morir, pregunta:  "VIRUS\n\nCada vez que alguien te descubra viendolo a los ojos tomarás un Shot")
        let ph18 = Preguntas.init(id: 18, status: true, categoria: .Shot, subcategoria:.A_morir, pregunta:  "VIRUS\n\nCada vez que alguien se acabe su vaso tomate un shot")
        let ph19 = Preguntas.init(id: 19, status: true, categoria: .Shot, subcategoria:.A_morir, pregunta:  "VIRUS\n\nCada vez que alguien se ponga de rodillas frente a ti tomate un shot")
        let ph20 = Preguntas.init(id: 20, status: true, categoria: .Shot, subcategoria:.A_morir, pregunta:  "VIRUS\n\nCada vez que alguien diga un mal comentario de to obligalo a tomarse un shot")
        let ph21 = Preguntas.init(id: 21, status: true, categoria: .Shot, subcategoria:.A_morir, pregunta:  "VIRUS\n\nRedirije un Shot cuando tu desees")
       
        
      
        
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
        self.preguntas.append(amigable38)
        self.preguntas.append(amigable39)
        self.preguntas.append(amigable40)
        self.preguntas.append(amigable41)
        self.preguntas.append(amigable42)
        self.preguntas.append(amigable43)
        self.preguntas.append(amigable44)
        self.preguntas.append(amigable45)
        self.preguntas.append(amigable46)
        self.preguntas.append(amigable47)
        self.preguntas.append(amigable48)
       
        
        
        
        
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
//        self.preguntas.append(ph22)
//        self.preguntas.append(ph23)
//        self.preguntas.append(ph24)
//        self.preguntas.append(ph25)
//        self.preguntas.append(ph26)
//        self.preguntas.append(ph27)
//        self.preguntas.append(ph28)
//        self.preguntas.append(ph29)
//        self.preguntas.append(ph30)
//        self.preguntas.append(ph31)
//        self.preguntas.append(ph32)
//        self.preguntas.append(ph33)
//        self.preguntas.append(ph34)
//        self.preguntas.append(ph35)
//        self.preguntas.append(ph36)
//        self.preguntas.append(ph37)
//        self.preguntas.append(ph38)
//        self.preguntas.append(ph39)
//        self.preguntas.append(ph40)
        
        
        
        
        
    }
    
    func changeStatusTranqui(status : Bool) -> Void {
        for pregunta in preguntas{
            if (pregunta.subcategoria == .AlgoTranqui){
                pregunta.status = status
            }
            
        }
        
    }
    func changeStatusNormal(status : Bool) -> Void {
        for pregunta in preguntas{
            if (pregunta.subcategoria == .Normal){
                pregunta.status = status
            }
            
        }
        
    }
    
    func changeStatusExtremo(status : Bool) -> Void {
        for pregunta in preguntas{
            if (pregunta.subcategoria == .Extremo){
                pregunta.status = status
            }
            
        }
        
    }
    
    func changeStatusAmorir(status : Bool) -> Void {
        for pregunta in preguntas{
            if (pregunta.subcategoria == .A_morir){
                pregunta.status = status
            }
            
        }
        
    }
    
}
