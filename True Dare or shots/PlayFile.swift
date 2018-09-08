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
        let switchestado1 = UserDefaults.standard.object(forKey: "valor1")
        print("switch1 esta en:\(String(describing: switchestado1))")
        
        let switchestado2 = UserDefaults.standard.object(forKey: "valor2")
        print("switch2 esta en:\(String(describing: switchestado2))")
        
        let switchestado3 = UserDefaults.standard.object(forKey: "valor3")
        print("switch3 esta en:\(String(describing: switchestado3))")
        
        let switchestado4 = UserDefaults.standard.object(forKey: "valor4")
        print("switch4 esta en:\(String(describing: switchestado4))")
        
    }
    
    
}
