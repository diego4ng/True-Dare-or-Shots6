//
//  PlayFile.swift
//  True Dare or shots
//
//  Created by Diego on 07/08/18.
//  Copyright © 2018 diego. All rights reserved.
//

import UIKit
import DMSwipeCards
import CoreData

// github.com/kkvinokk/KKSwipeCards
//github.com/d-32/DMSwipeCards

class PlayFile: UIViewController {
    
    @IBOutlet weak var etiqueta: UILabel!
    @IBOutlet weak var True: UIButton!
    @IBOutlet weak var Dare: UIButton!
    @IBOutlet weak var Shot: UIButton!
    @IBOutlet weak var Turno: UILabel!
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var retolabel: UILabel!
    
    var aux = 0
    var nombrejugador : String?
    
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
                        "26.-",
                        "27.-",
                        "28.-",
                        "29.-",
                        "30.-",
                        "31.-",
                        "32.-",
                        "33.-",
                        "34.-",
                        "35.-",
                        "36.-",
                        "37.-",
                        "38.-",
                        "39.-",
                        "40.-",
                        "41.-",
                        "42.-",
                        "43.-",
                        "44.-",
                        "45.-",
                        "46.-",
                        "47.-",]
    
    let arrayretos = ["reto1", "reto2", "Reto3","Reto4", "Reto5","Reto 6"]
    let arrayretos1 = ["reto1", "reto2", "Reto3","Reto4", "Reto5","Reto 6"]
    let arrayretos2 = ["reto1", "reto2", "Reto3","Reto4", "Reto5","Reto 6"]
    let arrayretos3 = ["reto1", "reto2", "Reto3","Reto4", "Reto5","Reto 6"]
    
    let arrayverdad = ["verdad1", "verdad2", "verdad3","verdad4", "verdad5","verdad6"]
    let arrayverdad1 = ["verdad1", "verdad2", "verdad3","verdad4", "verdad5","verdad6"]
    let arrayverdad2 = ["verdad1", "verdad2", "verdad3","verdad4", "verdad5","verdad6"]
    let arrayverdad3 = ["verdad1", "verdad2", "verdad3","verdad4", "verdad5","verdad6"]
    
    let arrayShot = ["Shot1", "shot2", "shot3","shot3", "shot4","shot5"]
    let arrayShot1 = ["Shot1", "shot2", "shot3","shot3", "shot4","shot5"]
    let arrayShot2 = ["Shot1", "shot2", "shot3","shot3", "shot4","shot5"]
    let arrayShot3 = ["Shot1", "shot2", "shot3","shot3", "shot4","shot5"]
    
    
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
    
    }
    

    @IBAction func True(_ sender: UIButton) {
        sender.pulsate()
        etiqueta.text = "Verdad"
        Name.text = callUsers()
        recuperarconfiguracion()
        
        
//        var contador :Int = 0
//            let tipodearreglo:Int = UserDefaults.standard.object(forKey: "valor1") as! Int
//            if (tipodearreglo == 1) {
//                contador = +1
//                let selectarray = true
//                print (selectarray)
//            }else{
//                
//        }
            
        
        let contadorderetos = arrayretos.count
        let numerodereto = contadorderetos-1
        let randomnumber = Int(arc4random_uniform(UInt32(numerodereto)))
        let retofinal = (arrayretos[randomnumber])
        retolabel.text = "\(retofinal)"
        
        
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
        let switchestado1 = UserDefaults.standard.bool(forKey: "valor1")
        print("switch1 esta en:\(switchestado1)")
        
        let switchestado2 = UserDefaults.standard.bool(forKey: "valor2")
        print("switch2 esta en:\(switchestado2)")
        
        let switchestado3 = UserDefaults.standard.bool(forKey: "valor3")
        print("switch3 esta en:\(switchestado3)")
        
        let switchestado4 = UserDefaults.standard.bool(forKey: "valor4")
        print("switch4 esta en:\(switchestado4)")
        
    }
    
    
}
