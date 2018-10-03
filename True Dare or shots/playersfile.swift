//
//  playersfile.swift
//  True Dare or shots
//
//  Created by Diego on 07/08/18.
//  Copyright © 2018 diego. All rights reserved.
//

import UIKit
import CoreData

class playersfile: UIViewController, UITableViewDataSource ,UITableViewDelegate  {
    
    
    var users = [NSManagedObject]()
    
    
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
                                        self.saveUsers(nameTask: textField!.text!)
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
    
    // sirve para realizar la conexion con core data
    func conexion () -> NSManagedObjectContext{
        let appdelegate = UIApplication.shared.delegate as! AppDelegate
        let managedContext = appdelegate.persistentContainer.viewContext
        return managedContext
    }
    
    func mostrarDatos(){
        let contexto = conexion()
        let fetchRequest :NSFetchRequest<Users> = Users.fetchRequest()
        do {
            users = try contexto.fetch(fetchRequest)
        }catch let error as NSError{
            print("No muestra nada",error)
        }
        
    }
   
    func saveUsers(nameTask:String){
        //1  Si recuerdas la parte de teoría que vimos, hemos mencionado, que para guardar datos en Core Data, lo primero que debemos hacer es guardarlos en nuestro managed object context. Por tanto, lo que hacemos es recuperar nuestro managed object context a partir del appDelegate.
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let managedContext = appDelegate.persistentContainer.viewContext
        
        //2Una vez que tenemos nuestro managed object context, creamos un objeto de tipo NSEntityDescription y lo almacenamos en la variable entity, que representa nuestra entidad Task. A partir de este objeto entity, creamos un objeto managed object y lo almacenamos en nuestro managed object context. (Recuerda que NSManagedObject representa un objeto único almacenado en Core Data. En este caso representa a nuestra tarea)
        let entity = NSEntityDescription.entity(forEntityName: "Users", in: managedContext)
        let task = NSManagedObject(entity: entity!, insertInto: managedContext)
        
        //3Utilizamos KVC para especificar el nombre de nuestra tarea. Ten en cuenta que hemos utilizado “name” porque cuando hemos creado el modelo, especificamos un atributo llamado “name”. Si tu le has dado un nombre diferente al crear ese atributo en el modelo, aquí tendrás que poner ese mismo nombre. Si no cumples esta condición, tu aplicación crasheará.
        task.setValue(nameTask, forKey: "name")
        
        //4Utilizamos el método save() del managed object context para guardar nuestra tarea en disco. Como esta operación de guardado puede fallar y lanzar un error, realizamos la llamada dentro de un try-catch.
        do {
            try managedContext.save()
            //5Una vez que hemos guardado nuestra tarea a través de Core Data, ya solo nos queda almacenarla en nuestro array tasks, para que se muestre cuando recarguemos la table view.
            users.append(task)
        } catch let error as NSError {
            print("No ha sido posible guardar \(error), \(error.userInfo)")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // 1Exactamente igual a como hicimos en el método saveTask(), obtenemos nuestro managed object context a partir del appDelegate.
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let managedContext = appDelegate.persistentContainer.viewContext
        
        // 2Creamos un objeto fetch request para recuperar nuestras tareas. Si recuerdas la teoría de NSFetchRequest que vimos al comienzo del tutorial, sabrás que tenemos que especificar una serie de calificadores para definir nuestra consulta. En este caso, hemos especificado que nos devuelva los objetos almacenados en la entidad Task. De esta forma, recuperaremos todas las tareas que haya almacenadas.
        let fetchRequest : NSFetchRequest<Users> = Users.fetchRequest()
        
        // 3Una vez que hemos definido nuestra fetch request (La consulta que vamos a hacer a nuestra Base de Datos), la ejecutamos a través del método executeFetchRequest() y almacenamos los resultados en la variable results. Por último almacenamos estas tareas recuperadas en nuestro array tasks. Puedes ver, que seguimos controlando los errores utilizando un do-catch.
        do {
            let results = try managedContext.fetch(fetchRequest)
            users = results as [NSManagedObject]
        } catch let error as NSError {
            print("No ha sido posible cargar \(error), \(error.userInfo)")
        }
        // 4 Por último actualizamos los datos de la tabla para que muestre por pantalla las tareas recuperadas.
        //Pues con esto, tendríamos nuestra aplicación correctamente modificada para que realice el guardado y recuperación de las tareas en Core Data. Vamos a hacer la prueba de que todo funciona correctamente.
usertable.reloadData()
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
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        //Creamos un objeto task que recuperamos del array tasks
        let Users = self.users[indexPath.row]
        //Con KVC obtenemos el contenido del atributo "name" de la task y lo añadimos a nuestra Cell
        cell!.textLabel!.text = Users.value(forKey: "name") as? String
        
        return cell!
    }
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
  let contexto = conexion()
  let persona = users[indexPath.row]
        
        if editingStyle == .delete{
            contexto.delete(persona)
            
            do{
                try contexto.save()
            }catch let error as NSError {
                print("no se borro", error)
            }
        }
      
      mostrarDatos()
     usertable.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Elimina jugador")
        let contexto = conexion()
        let persona = users[indexPath.row]
        
        
        
        
        let alert = UIAlertController(title: "Eliminar",
                                      message: "Desea borrar a  \(users[indexPath.row].value(forKey: "name") ?? String.self)",
                                      preferredStyle: .alert)
        
        let deleteAction = UIAlertAction(title: "Eliminar",
                                       style: .default,
                                       handler: { (action:UIAlertAction) -> Void in
                                        contexto.delete(persona)
                                        
                                        do{
                                            try contexto.save()
                                        }catch let error as NSError {
                                            print("no se borro", error)
                                        }
                                        
                                        
                                        self.mostrarDatos()
                                        self.usertable.reloadData()
                                        
        })
        
        let cancelAction = UIAlertAction(title: "Cancelar",
                                         style: .default) { (action: UIAlertAction) -> Void in
        }
        
        //Añadimos las dos UIAlertAction que hemos creado al UIAlertController
        alert.addAction(deleteAction)
        alert.addAction(cancelAction)
        
        //Lanzamos el UIAlertController
        present(alert,
                animated: true,
                completion: nil)

    }

}
