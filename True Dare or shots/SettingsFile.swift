//
//  SettingsFile.swift
//  True Dare or shots
//
//  Created by Diego on 07/08/18.
//  Copyright © 2018 diego. All rights reserved.
//

import UIKit

class SettingsFile: UIViewController {
    
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    @IBOutlet weak var switch3: UISwitch!
    @IBOutlet weak var switch4: UISwitch!
    
    @IBAction func switch1tapped(_ sender: UISwitch) {
        print("el valor del switch 1 es: \(updateswitch1())")
        UserDefaults.standard.set(updateswitch1(), forKey:"valor1")
    }
    
    
    @IBAction func switch2tapped(_ sender: UISwitch) {
        print("el valor del switch 2 es: \(updateswitch2())")
        UserDefaults.standard.set(updateswitch2(), forKey:"valor2")
    }
    
    @IBAction func switch3tapped(_ sender: UISwitch) {
        
       print("el valor del switch 3 es: \(updateswitch3())")
        UserDefaults.standard.set(updateswitch3(), forKey:"valor3")
    }
    
    @IBAction func switch4tapped(_ sender: UISwitch) {
        print("el valor del switch 4 es: \(updateswitch4())")
        UserDefaults.standard.set(updateswitch4(), forKey:"valor4")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recuperarconfiguracion()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    ////
    
    func updateswitch1() -> Bool {
        let valor1 :Bool
        
    if switch1.isOn
    {
        valor1 = true
    }else{
        valor1 = false
    }
        return valor1
    }
    
    
    func updateswitch2() -> Bool {
        let valor2 :Bool
        
        if switch2.isOn
        {
            valor2 = true
        }else{
            valor2 = false
        }
        return valor2
    }
    
    
    func updateswitch3() -> Bool {
        let valor3 :Bool
        
        if switch3.isOn
        {
            valor3 = true
        }else{
            valor3 = false
        }
        return valor3
    }
    
    
    
    func updateswitch4() -> Bool {
        let valor4 :Bool
        
        if switch4.isOn
        {
            valor4 = true
        }else{
            valor4 = false
        }
        return valor4
    }
    
    
    
    
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

