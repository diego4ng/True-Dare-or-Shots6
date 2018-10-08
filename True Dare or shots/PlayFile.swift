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



class PlayFile: UIViewController {
    
    @IBOutlet weak var etiqueta: UILabel!
    @IBOutlet weak var True: UIButton!
    @IBOutlet weak var Dare: UIButton!
    @IBOutlet weak var Shot: UIButton!
    @IBOutlet weak var Turno: UILabel!
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var retolabel: UILabel!
    
    
    //obejto de Categorias
    
    var categorias = CategoriasVerdad()
    var categoriasRetos = CategoriasRet()
    
    var aux = 0
    var nombrejugador : String?
    var switchestado1 : Bool? = nil
    var switchestado2 : Bool? = nil
    var switchestado3 : Bool? = nil
    var switchestado4 : Bool? = nil
    var switchestado5 : Bool? = nil
    var switchestado6 : Bool? = nil
    var switchestado7 : Bool? = nil
    var switchestado8 : Bool? = nil
    
    
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
        checkStatusSwitch()
    }
    
    
    @IBAction func Dare(_ sender: UIButton) {
        etiqueta.text = "Reto"
        sender.flash()
        Name.text = callUsers()
        checkStatusSwitchReto()
    }
    
   
    @IBAction func Shot(_ sender: UIButton) {
        etiqueta.text = "Shot"
        sender.shake()
        Name.text = callUsers()
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        switchestado1 = UserDefaults.standard.bool(forKey: "valor1")
        switchestado2 = UserDefaults.standard.bool(forKey: "valor2")
        switchestado3 = UserDefaults.standard.bool(forKey: "valor3")
        switchestado4 = UserDefaults.standard.bool(forKey: "valor4")
        
        if (switchestado1! || switchestado2! || switchestado3! || switchestado4!) {
            True.isEnabled = true
        }
        if (!switchestado1! && !switchestado2! && !switchestado3! && !switchestado4!) {
            True.isEnabled = false
        }
        
        // switches Reto
        
        switchestado5 = UserDefaults.standard.bool(forKey: "valor5")
        switchestado6 = UserDefaults.standard.bool(forKey: "valor6")
        switchestado7 = UserDefaults.standard.bool(forKey: "valor7")
        switchestado8 = UserDefaults.standard.bool(forKey: "valor8")
        
        if (switchestado5! || switchestado6! || switchestado7! || switchestado8!) {
            Dare.isEnabled = true
        }
        if (!switchestado5! && !switchestado6! && !switchestado7! && !switchestado8!) {
            Dare.isEnabled = false
        }
        
       
        super.viewWillAppear(animated) // No need for semicolon
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
    
    
    func showQuestions(randomnumber: Int){
            if categorias.preguntas[randomnumber].status{
                retolabel.text = categorias.preguntas[randomnumber].pregunta
            }
            else {
                checkStatusSwitch()
        }
        }
    func showQuestionsReto(randomnumber: Int){
        if categoriasRetos.preguntas[randomnumber].status{
            retolabel.text = categoriasRetos.preguntas[randomnumber].pregunta
        }
        else {
            checkStatusSwitchReto()
        }
    }
    func checkStatusSwitch() {
        let randomnumber = Int(arc4random_uniform(UInt32(categorias.preguntas.count)))

            if !switchestado2! {
                categorias.changeStatusAmigables(status: false)
            }else{
                categorias.changeStatusAmigables(status: true)
            }
            if !switchestado3! {
                categorias.changeStatusSexuales(status: false)
            }else{
                categorias.changeStatusSexuales(status: true)
            }
            if !switchestado4! {
                categorias.changeStatusProhibidas(status: false)
            }else{
                categorias.changeStatusProhibidas(status: true)
            }
            if  !switchestado1! {
                categorias.changeStatusVerdad(status: false)
            }else{
                categorias.changeStatusVerdad(status: true)
            }
            showQuestions(randomnumber: randomnumber)
        }
    
    func checkStatusSwitchReto() {
        let randomnumber = Int(arc4random_uniform(UInt32(categoriasRetos.preguntas.count)))
        
        if !switchestado6! {
            categoriasRetos.changeStatusAmigables(status: false)
        }else{
            categoriasRetos.changeStatusAmigables(status: true)
        }
        if !switchestado7! {
            categoriasRetos.changeStatusPrenda(status: false)
        }else{
            categoriasRetos.changeStatusPrenda(status: true)
        }
        if !switchestado8! {
            categoriasRetos.changeStatusÑero(status: false)
        }else{
            categoriasRetos.changeStatusÑero(status: true)
        }
        if  !switchestado5! {
            categoriasRetos.changeStatusVerdad(status: false)
        }else{
            categoriasRetos.changeStatusVerdad(status: true)
        }
        showQuestionsReto(randomnumber: randomnumber)
    }
    
}
