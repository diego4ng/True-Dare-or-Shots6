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
    
    @IBOutlet weak var switch1_reto: UISwitch!
    @IBOutlet weak var switch2_reto: UISwitch!
    @IBOutlet weak var switch3_reto: UISwitch!
    @IBOutlet weak var switch4_reto: UISwitch!
    
    @IBOutlet weak var switch1_shot: UISwitch!
    @IBOutlet weak var switch2_shot: UISwitch!
    @IBOutlet weak var switch3_shot: UISwitch!
    @IBOutlet weak var switch4_shot: UISwitch!
    
    
    // ***************************Cuando los switches son presionados**************************************
    
    
    @IBAction func switch1tapped(_ sender: UISwitch) {
        print("el valor del switch 1 -VERDAD es: \(updateswitch1())")
        UserDefaults.standard.set(updateswitch1(), forKey:"valor1")
    }
    
    
    @IBAction func switch2tapped(_ sender: UISwitch) {
        print("el valor del switch 2 -VERDADes: \(updateswitch2())")
        UserDefaults.standard.set(updateswitch2(), forKey:"valor2")
    }
    
    @IBAction func switch3tapped(_ sender: UISwitch) {
        
       print("el valor del switch 3 -VERDAD es: \(updateswitch3())")
        UserDefaults.standard.set(updateswitch3(), forKey:"valor3")
    }
    
    @IBAction func switch4tapped(_ sender: UISwitch) {
        print("el valor del switch 4 -VERDAD es: \(updateswitch4())")
        UserDefaults.standard.set(updateswitch4(), forKey:"valor4")
    }
    
    
    
    @IBAction func switch1_reto_tapped(_ sender: UISwitch) {
        print("el valor del switch 1 -RETO es: \(updateswitch5())")
        UserDefaults.standard.set(updateswitch5(), forKey:"valor5")
    }
    
    @IBAction func switch2_reto_tapped(_ sender: UISwitch) {
        print("el valor del switch 2 -RETO es: \(updateswitch6())")
        UserDefaults.standard.set(updateswitch6(), forKey:"valor6")
    }
    
    @IBAction func switch3_reto_tapped(_ sender: UISwitch) {
        print("el valor del switch 3 -RETO es: \(updateswitch7())")
        UserDefaults.standard.set(updateswitch7(), forKey:"valor7")
    }
    
    @IBAction func switch4_reto_tapped(_ sender: UISwitch) {
        print("el valor del switch 4 -RETO es: \(updateswitch8())")
        UserDefaults.standard.set(updateswitch8(), forKey:"valor8")
    }
    
    
    
    @IBAction func switch1_shot_tapped(_ sender: UISwitch) {
        print("el valor del switch 1 -SHOT es: \(updateswitch9())")
        UserDefaults.standard.set(updateswitch9(), forKey:"valor9")
    }
    
    @IBAction func switch2_shot_tapped(_ sender: UISwitch) {
        print("el valor del switch 2 -SHOT es: \(updateswitch10())")
        UserDefaults.standard.set(updateswitch10(), forKey:"valor10")
    }
    
    @IBAction func switch3_shot_tapped(_ sender: UISwitch) {
        print("el valor del switch 3 -SHOT es: \(updateswitch11())")
        UserDefaults.standard.set(updateswitch11(), forKey:"valor11")
    }
    
    @IBAction func switch4_shot_tapped(_ sender: UISwitch) {
        print("el valor del switch 4 -SHOT es: \(updateswitch12())")
        UserDefaults.standard.set(updateswitch12(), forKey:"valor12")
    }
    
    
    
    //********************Inicializa los switches*****************+
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UserDefaults.standard.set(true, forKey:"valor1")
        UserDefaults.standard.set(true, forKey:"valor2")
        UserDefaults.standard.set(true, forKey:"valor3")
        UserDefaults.standard.set(true, forKey:"valor4")
        UserDefaults.standard.set(true, forKey:"valor5")
        UserDefaults.standard.set(true, forKey:"valor6")
        UserDefaults.standard.set(true, forKey:"valor7")
        UserDefaults.standard.set(true, forKey:"valor8")
        UserDefaults.standard.set(true, forKey:"valor9")
        UserDefaults.standard.set(true, forKey:"valor10")
        UserDefaults.standard.set(true, forKey:"valor11")
        UserDefaults.standard.set(true, forKey:"valor12")
        switch1.isOn = true
        switch2.isOn = true
        switch3.isOn = true
        switch4.isOn = true
        switch1_reto.isOn = true
        switch2_reto.isOn = true
        switch3_reto.isOn = true
        switch4_reto.isOn = true
        switch1_shot.isOn = true
        switch2_shot.isOn = true
        switch3_shot.isOn = true
        switch4_shot.isOn = true
        
        //recuperarconfiguracion()
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
    
    
    func updateswitch5() -> Bool {
        let valor5 :Bool
        
        if switch1_reto.isOn
        {
            valor5 = true
        }else{
            valor5 = false
        }
        return valor5
    }
    
    func updateswitch6() -> Bool {
        let valor6 :Bool
        
        if switch2_reto.isOn
        {
            valor6 = true
        }else{
            valor6 = false
        }
        return valor6
    }
    
    func updateswitch7() -> Bool {
        let valor7 :Bool
        
        if switch3_reto.isOn
        {
            valor7 = true
        }else{
            valor7 = false
        }
        return valor7
    }
    
    
    func updateswitch8() -> Bool {
        let valor7 :Bool
        
        if switch4_reto.isOn
        {
            valor7 = true
        }else{
            valor7 = false
        }
        return valor7
    }
    
    func updateswitch9() -> Bool {
        let valor9 :Bool
        
        if switch1_shot.isOn
        {
            valor9 = true
        }else{
            valor9 = false
        }
        return valor9
    }
    
    func updateswitch10() -> Bool {
        let valor10 :Bool
        
        if switch2_shot.isOn
        {
            valor10 = true
        }else{
            valor10 = false
        }
        return valor10
    }
    
    func updateswitch11() -> Bool {
        let valor11 :Bool
        
        if switch3_shot.isOn
        {
            valor11 = true
        }else{
            valor11 = false
        }
        return valor11
    }
    
    func updateswitch12() -> Bool {
        let valor12 :Bool
        
        if switch4_shot.isOn
        {
            valor12 = true
        }else{
            valor12 = false
        }
        return valor12
    }

}





// recupera solo la configuracion a la ultima vez que se uso
//    func recuperarconfiguracion(){
//        let switchon:Int = UserDefaults.standard.object(forKey: "valor1") as! Int
//        if (switchon == 0) {
//         switch1.setOn(false, animated:true)
//            }else{
//        switch1.setOn(true, animated:true)
//}
//
//        let switchon2:Int = UserDefaults.standard.object(forKey: "valor2") as! Int
//        if (switchon2 == 0) {
//            switch2.setOn(false, animated:true)
//        }else{
//            switch2.setOn(true, animated:true)
//        }
//
//        let switchon3:Int = UserDefaults.standard.object(forKey: "valor3") as! Int
//        if (switchon3 == 0) {
//            switch3.setOn(false, animated:true)
//        }else{
//            switch3.setOn(true, animated:true)
//        }
//
//        let switchon4:Int = UserDefaults.standard.object(forKey: "valor4") as! Int
//        if (switchon4 == 0) {
//            switch4.setOn(false, animated:true)
//        }else{
//            switch4.setOn(true, animated:true)
//        }
//
//}
