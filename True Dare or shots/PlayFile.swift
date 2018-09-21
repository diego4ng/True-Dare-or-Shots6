//
//  PlayFile.swift
//  True Dare or shots
//
//  Created by Diego on 07/08/18.
//  Copyright © 2018 diego. All rights reserved.
//

import UIKit
import CoreData

// github.com/kkvinokk/KKSwipeCards
//github.com/d-32/DMSwipeCards


// Struct de Retos del juego

struct Categorias {
    
    let categoria_name : String
    let status_categoria : BooleanLiteralType
    let subCategorias: [Preguntas]
    
}

class PlayFile: UIViewController {
    
    @IBOutlet weak var etiqueta: UILabel!
    @IBOutlet weak var True: UIButton!
    @IBOutlet weak var Dare: UIButton!
    @IBOutlet weak var Shot: UIButton!
    @IBOutlet weak var Turno: UILabel!
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var retolabel: UILabel!
    
    
    
    // Array de Preguntas
    
    var preguntas = [Preguntas]()
    
    // Array de Categorias (del juego, Verdad , shot, retos )
    
    var categorias = [Categorias]()
    
    
    var aux = 0
    var nombrejugador : String?
    var switchestado1 : Bool? = nil
    var switchestado2 : Bool? = nil
    var switchestado3 : Bool? = nil
    var switchestado4 : Bool? = nil
    
    let arrayverdadx = ["1.-Alguna vez has tenido una relación de una noche? Si es así ¿Cuántas has tenido?",
                        "2.-¿De que carecteristica tuya eres demasiado consciente?",
                        "3.-¿Cuando fue la primera vez que fumaste",
                        "4.-¿Alguna vez has llorado durante un orgasmo?",
                        "5.-¿Has fallado en seducir a alguien? Si es así cuantas veces?",
                        "6.-¿Alguna vez has interrumpido mientras tus padres estaban teniendo sexo?",
                        "7.-¿Cual es tu posición sexual favorita?",
                        "8.-¿Alguna vez has sido sucia en un coche?",
                        "9.-¿Romperías la relación de una pareja si eso te llevase a salir con la persona de tus sueños?",
                        "10.-¿Qué tipo de borracho eres: feliz,social,difundes el amor,malvado, sexual,calmado,astuto",
                        "11.-Recuerdas la primera vez que viste a un miembro del sexo opuesto(que no sean tus padres)desnudo?¿Qué te parecio?",
                        "12.-Te afeitas el vello púbico",
                        "13.-¿Cuanto dinero ganas?",
                        "14.-Alguna vez has engañado a tu novi@?",
                        "15.-¿Cuantas veces durante el dia piensas en el sexo?",
                        "16.-Si fueras un alimento ¿Qué serías y cómo otras personas te comerían?",
                        "17.-Si no eres gay, que persona presente sería más probable que te volviera gay",
                        "18.-¿Alguna vez te has bañado desnudo en público?",
                        "19.-Con qué tipo de persona te gustaría casarte algún dia? ",
                        "20.-¿Qué comida te comerías todos los días si pudieras",
                        "21.-¿Cuál es el sueño mas sucio que has tenido? Describe con detalle",
                        "22.-¿Alguna vez has llegado al orgasmo con toda la ropa puesta?",
                        "23.-¿Cuando te comenzaste a masturbar?",
                        "24.-¿Recibes o das más?",
                        "25.-¿Si tuvieras que matar a alguien ¿Quién sería?",
                        "26.-¿Cuál es tu talento secreto?",
                        "27.-¿Si tuvieras la oportunidad de volver a nacer como alguien más en este cuarto,¿quién sería?¿Por qué?",
                        "28.-Entre todas las personas en esta sala, con qué persona lo hárias?",
                        "29.-¿Alguna vez has intimado a alguien?",
                        "30.-Pregunta a un jugador a tu derecha si ha tenido relaciones sexuales con alguien que conozcas, si es asi ¿quién era, cómo era? y darles una calificación.",
                        "31.-Si le va a dar consejo de (no hagas lo que yo hice) a una persona mas joven ¿qué sería?",
                        "32.-¿Cuál es tu mayor provocación sexual?",
                        "33.-¿Cuál es tu más profunda, más oscura fantasía?",
                        "34.-¿Alguna vez has usado lubricante?",
                        "35.-¿Con quién en el gruoo tendrías sexo y ¿ por qué tendrias sexo con él o ella?",
                        "36.-¿Cual es la cosa más loca que has hecho desnudo?",
                        "37.-Redtube, Youporn o PornHub? ¿Cuál y porque..?",
                        "38.-¿Cuál es tu idea de una cita perfecta?",
                        "39.-¿Alguna vez has besado al hermano o hermana de un amigo?",
                        "40.-¿Cuándo has amado a alguien que no te haya amado de vuelta?",
                        "41.-¿Alguna vez has besado a alguien del mismo sexo? ¿Quien?",
                        "42.-¿Alguna vez has acosado a alguien? Si lo has ¿Quién fue?",
                        "43.-¿Cuando tuviste tu primer beso y cómo fue?",
                        "44.-¿Has tomado la virginidad de multiples personas?",
                        "45.-¿De que tienes miedo?",
                        "46.-¿Cuál es el mayor número de veces que has tenido relaciones sexuales en el transcurso de un día",
                        "47.-",
                        "48.-",
                        "49.-",
                        "50.-",
                        "51.-",
                        "52.-",
                        "53.-",
                        "54.-",
                        "55.-",
                        "56.-",
                        "57.-",
                        "58.-",
                        "59.-¿Cuál es el menor tiempo que has tardado en llegar a un orgasmo?",]
    
     let arrayverdad2 = ["verdad1", "verdad2", "verdad3","verdad4", "verdad5","verdad6","verdad1", "verdad2", "verdad3","verdad4", "verdad5","verdad6","verdad1", "verdad2", "verdad3","verdad4", "verdad5","verdad6","verdad1", "verdad2", "verdad3","verdad4", "verdad5","verdad6","verdad1", "verdad2", "verdad3","verdad4", "verdad5","verdad6"]
     let arrayverdad3 = ["verdad1.0", "verdad2.0", "verdad3.0","verdad4.0", "verdad5.0","verdad6.0","verdad1.0", "verdad2.0", "verdad3.0","verdad4.0", "verdad5.0","verdad6.0","verdad1.0", "verdad2.0", "verdad3.0","verdad4.0", "verdad5.0","verdad6.0","verdad1.0", "verdad2.0", "verdad3.0","verdad4.0", "verdad5.0","verdad6.0","verdad1.0", "verdad2.0", "verdad3.0","verdad4.0", "verdad5.0","verdad6.0"]
    
    
    let arrayretos = ["reto1", "reto2", "Reto3","Reto4", "Reto5","Reto 6"]

    let arrayShot = ["Shot1", "shot2", "shot3","shot3", "shot4","shot5"]
    
     let arrayShot2 = ["Shot1", "shot2", "shot3","shot3", "shot4","shot5"]
  
    
    var arreglo_global_verdad = [String]()
    
    //conexion con coreData
func conexion () -> NSManagedObjectContext{
        let appdelegate = UIApplication.shared.delegate as! AppDelegate
        let managedContext = appdelegate.persistentContainer.viewContext
        return managedContext
    }
    //
    
    override func viewDidLoad() {
        super.viewDidLoad()
        etiqueta.text = "Play"
        Name.text = ""
        retolabel.text = "Un botón te espera 😏"
        addPreguntas()
    }
    

    @IBAction func True(_ sender: UIButton) {
        sender.pulsate()
        etiqueta.text = "Verdad"
        Name.text = callUsers()
        
        configuracionPreguntas()
        let randomnumber = Int(arc4random_uniform(UInt32()))
        retolabel.text = showPreguntas(randomNumber: randomnumber)
        
        
    }
    
    
    @IBAction func Dare(_ sender: UIButton) {
        etiqueta.text = "Reto"
        sender.flash()
        Name.text = callUsers()

    }
    
   
    @IBAction func Shot(_ sender: UIButton) {
        etiqueta.text = "Shot"
        sender.shake()
        Name.text = callUsers()
    
    }
    
    //MANDA EL JUGADOR
    func callUsers () -> String{
        let contexto = conexion()
        let fetchrequest : NSFetchRequest<Users> = Users.fetchRequest()
        
        do {
            let resultado = try contexto.fetch(fetchrequest)
            print("numero de jugadores\(resultado.index(after: 1))")
            
            if aux < (resultado.count){
                var ddd = resultado as [NSManagedObject]
                nombrejugador = ddd[aux].value(forKey: "name") as? String
                aux += 1
                if aux == resultado.count{
                    aux = 0
                }
            }
        } catch let error as NSError{
            print ("no mostro datos", error)
        }
        return nombrejugador!
    }
    
    // RECUPERA LA CONFIGURACION ESTABLECIDA EN SETTINGS FILE
    func recuperarconfiguracion ()
    {
        switchestado1 = UserDefaults.standard.bool(forKey: "valor1")
        print("switch1 esta en:\(switchestado1)")
        
        switchestado2 = UserDefaults.standard.bool(forKey: "valor2")
        print("switch2 esta en:\(switchestado2)")
        
        switchestado3 = UserDefaults.standard.bool(forKey: "valor3")
        print("switch3 esta en:\(switchestado3)")
        
        switchestado4 = UserDefaults.standard.bool(forKey: "valor4")
        print("switch4 esta en:\(switchestado4)")
        
    }
    
    
    func agregarverdades(){
        
        if switchestado1!  {
            arreglo_global_verdad.append(contentsOf:arrayverdadx)
            print(" se agregro el arreglo 1")
        } else{
            print("no se agrego el arreglo 1")
        }
        
        if switchestado2!  {
            arreglo_global_verdad.append(contentsOf:arrayverdad2)
            print(" se agregro el arreglo 2")
        } else{
            print("no se agrego el arreglo 2")
        }
        
        if switchestado3!  {
            arreglo_global_verdad.append(contentsOf:arrayverdad3)
            print(" se agregro el arreglo 2")
        } else{
            print("no se agrego el arreglo 2")
        }
    }
    
    func addPreguntas(){
        let p1 = Preguntas.init(id: 1, status: (True != nil), categoria: "verdad", subcategoria: "infantil", pregunta: "¿Como te llamas?")
        preguntas.append(p1)
        let p2 = Preguntas.init(id: 2, status: (True != nil), categoria: "verdad", subcategoria: "infantil", pregunta: "Como estas?")
        preguntas.append(p2)
    }
    
    func addCategoria(status : Bool){
        let verdad = Categorias.init(categoria_name: "verdad", status_categoria: status, subCategorias: preguntas)
        categorias.append(verdad)
    }
    
    func configuracionPreguntas ()
    {
        switchestado1 = UserDefaults.standard.bool(forKey: "valor1")
        if  switchestado1! {
            addCategoria(status: switchestado1!)
        }else{
            print("ERROR Switch 1 false")
            let alert = UIAlertController(title: "Alerta",
                                          message: "Activa la categoria en ..",
                                          preferredStyle: .alert)
            
            let cancelAction = UIAlertAction(title: "Cancelar",
                                             style: .default) { (action: UIAlertAction) -> Void in
            }
            
            //Añadimos el TextField al UIAlertController
            alert.addTextField {
                (textField: UITextField) -> Void in
            }
            alert.addAction(cancelAction)
            present(alert,
                    animated: true,
                    completion: nil)
        }
    }
    
    func showPreguntas(randomNumber : Int)-> String{
        for cp in categorias {
            if cp.status_categoria {
                let question = preguntas[randomNumber].pregunta
                return question
            }
        }
        return "Switch desactivado"
    }
    
    
}
