//
//  AddDare.swift
//  True Dare or shots
//
//  Created by Diego on 07/08/18.
//  Copyright © 2018 diego. All rights reserved.
//

import UIKit

extension UIColor {
    static func color(_ red: Int, green: Int, blue: Int, alpha: Float) -> UIColor {
        return UIColor(
            red: 1.0 / 255.0 * CGFloat(red),
            green: 1.0 / 255.0 * CGFloat(green),
            blue: 1.0 / 255.0 * CGFloat(blue),
            alpha: CGFloat(alpha))
    }
}


class AddDare: UIViewController, CircleMenuDelegate , UITextFieldDelegate {
    
    @IBOutlet weak var boton_seleccionado: UILabel!
    @IBOutlet weak var Agregatu: UILabel!
    @IBOutlet weak var true_dare_shot: UILabel!
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var Agregar: UIButton!
    
    //    let colors = [UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.purpleColor()]
    let items: [(icon: String, color: UIColor)] = [
        ("botton verdadX", UIColor(red: 255/255, green: 97/255, blue: 0/255, alpha: 1)),
        ("botton RetoX", UIColor(red: 0/255, green: 105/255, blue: 163/255, alpha: 1)),
        ("botton ShotX", UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)),
        ("adddateblack", UIColor(red: 0.51, green: 0.15, blue: 1, alpha: 1)),
        ("adddateblack", UIColor(red: 1, green: 0.39, blue: 0, alpha: 1)),
        ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // add button
                let button = CircleMenu(
                    frame: CGRect(x: 160, y: 220, width: 50, height: 50),
                    normalIcon:"PRUEBA2",
                    selectedIcon:"PRUEBA1-2",
                    buttonsCount: 3,
                    duration: 2,
                    distance: 120)
        button.backgroundColor = UIColor.lightGray
                button.delegate = self
                button.layer.cornerRadius = button.frame.size.width / 6
                view.addSubview(button)
        
        // para hacer el delegado
        self.textfield.delegate = self
        //oculta los botones
        Agregatu.isHidden = true
        true_dare_shot.isHidden = true
        textfield.isHidden = true
        Agregar.isHidden = true
    }
    
    // MARK: <CircleMenuDelegate>
    
    func circleMenu(_: CircleMenu, willDisplay button: UIButton, atIndex: Int) {
        button.backgroundColor = items[atIndex].color
        
        button.setImage(UIImage(named: items[atIndex].icon), for: .normal)
        
        // set highlited image
        let highlightedImage = UIImage(named: items[atIndex].icon)?.withRenderingMode(.alwaysTemplate)
        button.setImage(highlightedImage, for: .highlighted)
        button.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3)
    }
    
    func circleMenu(_: CircleMenu, buttonWillSelected _: UIButton, atIndex: Int) {
        print("button will selected: \(atIndex)")
        if atIndex == 0{
            Agregatu.isHidden = false
            true_dare_shot.isHidden = false
            textfield.isHidden = false
            boton_seleccionado.text = "Verdad"
            Agregar.isHidden = false
        }
        if atIndex == 1{
            Agregatu.isHidden = false
            true_dare_shot.isHidden = false
            textfield.isHidden = false
            boton_seleccionado.text = "Reto"
            Agregar.isHidden = false
        }
        if atIndex == 2{
            Agregatu.isHidden = false
            true_dare_shot.isHidden = false
            textfield.isHidden = false
            boton_seleccionado.text = "Shot"
            Agregar.isHidden = false
        }
    }
    
    func circleMenu(_: CircleMenu, buttonDidSelected _: UIButton, atIndex: Int) {
        print("button did selected: \(atIndex)")
    }
    
    // Funcion para esconder el teclado cuando tocamos la pantalla
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    // Funcion para esconder el teclado cuando presionamos return
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return (true)
    }
}

