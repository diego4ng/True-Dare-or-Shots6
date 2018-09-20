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
    var switchestado1 : Bool? = nil
    var switchestado2 : Bool? = nil
    var switchestado3 : Bool? = nil
    var switchestado4 : Bool? = nil
    
    let arrayverdadx = ["A,B,C,D"]
    let arrayverdad2 = ["1", "2", "3","4"]
     let arrayverdad3 = ["-XX-","YY","-WW-","ZZ"]
     let arrayverdad4 = ["arrayverdad4-11-", "arrayverdad4-22-", "arrayverdad4-33-","arrayverdad4-44-"]
    
  
    
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
    
    }
    

    @IBAction func True(_ sender: UIButton) {
        sender.pulsate()
        etiqueta.text = "Verdad"
        Name.text = callUsers()
        recuperarconfiguracion()
        agregarverdades()
      
        let contadorderetos = arreglo_global_verdad.count
        let numerodereto = contadorderetos-1
        let randomnumber = Int(arc4random_uniform(UInt32(numerodereto)))
        let retofinal = (arreglo_global_verdad[randomnumber])
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
    
}
