//
//  playersfile.swift
//  True Dare or shots
//
//  Created by Diego on 07/08/18.
//  Copyright © 2018 diego. All rights reserved.
//

import UIKit

class playersfile: UIViewController, UITableViewDataSource ,UITableViewDelegate  {
    
    
    var tasks = [String]()
    
    
    @IBOutlet weak var usertable: UITableView!
    
    @IBAction func adduser(_ sender: UIButton) {
        //Creamos el UIAlertController
        let alert = UIAlertController(title: "Jugadores",
                                      message: "Añade un nuevo Jugador",
                                      preferredStyle: .alert)
        
        //Creamos el UIAlertAction que nos permitirá guardar la tarea
        let saveAction = UIAlertAction(title: "Guardar",
                                       style: .default,
                                       handler: { (action:UIAlertAction) -> Void in
                                        
                                        //Guardamos el texto del textField en el array tasks y recargamos la table view
                                        let textField = alert.textFields!.first
                                        self.tasks.append(textField!.text!)
                                        self.usertable.reloadData()
        })
        
        //Creamos el UIAlertAction que nos permitirá cancelar
        let cancelAction = UIAlertAction(title: "Cancelar",
                                         style: .default) { (action: UIAlertAction) -> Void in
        }
        
        //Añadimos el TextField al UIAlertController
        alert.addTextField {
            (textField: UITextField) -> Void in
        }
        
        //Añadimos las dos UIAlertAction que hemos creado al UIAlertController
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        //Lanzamos el UIAlertController
        present(alert,
                animated: true,
                completion: nil)
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usertable.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView:UITableView, numberOfRowsInSection section:Int) -> Int
    {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell!.textLabel!.text = tasks[indexPath.row]
        return cell!
    }
    
    
    

}
