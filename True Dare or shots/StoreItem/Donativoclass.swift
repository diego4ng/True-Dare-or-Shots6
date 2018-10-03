//
//  Donativoclass.swift
//  True Dare or shots
//
//  Created by Diego on 02/10/18.
//  Copyright © 2018 diego. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class Donativoclass: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate , UICollectionViewDelegateFlowLayout{
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        
        updateStore()
        
        if self.storeCollection.count == 0{
            createItemStore(title: "Dona 10 pesos", imagename: "moneda.jpeg", purchased: true, productIdentifier: "")
            createItemStore(title: "Dona 20 pesos", imagename: "moneda2.jepg", purchased: false, productIdentifier: "")
            createItemStore(title: "Dona 30 pesos", imagename: "moneda3.jepg", purchased: false, productIdentifier: "")
            createItemStore(title: "Dona 50 peso", imagename: "moneda4.jepg", purchased: false, productIdentifier: "")
           
            updateStore()
            self.collectionView.reloadData()
        }
    }//viewDidload corchete
    
    func createItemStore(title:String,imagename:String,purchased:Bool,productIdentifier:String)
    {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let managedContext = appDelegate.persistentContainer.viewContext
        let context = managedContext
        //  let fetchRequest : NSFetchRequest<StoreItem> = StoreItem.fetchRequest()
        
        if let entity = NSEntityDescription.entity(forEntityName: "StoreItem", in: managedContext){
            let item = NSManagedObject(entity: entity, insertInto: context) as! StoreItem
            item.name = title
            item.imagename = imagename
            item.purchase = purchased
            item.productidentifier = productIdentifier
            
        }
        
        do{
            try context.save()
        }catch{}
        
    }//creareItemStore corchete
    

    var storeCollection = [StoreItem]()

    func updateStore (){
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let managedContext = appDelegate.persistentContainer.viewContext
        //let context = managedContext
        let fetchRequest : NSFetchRequest<StoreItem> = StoreItem.fetchRequest()
        do {
            let results = try managedContext.fetch(fetchRequest)
            storeCollection = results as [NSManagedObject] as! [StoreItem]
        } catch let error as NSError {
            print("No ha sido posible cargar \(error), \(error.userInfo)")
        }
    }
    
    
    
    
    
    
   // celdas
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.storeCollection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoreCell", for: indexPath) as! Storeitemcollectionviewcell
        
        let storeItem = self.storeCollection[indexPath.row]
        cell.imageview.image = UIImage(named: storeItem.imagename!)
        cell.label.text = storeItem.name
        
        
        for subview in cell.imageview.subviews{
            subview.removeFromSuperview()
        }
        
        if storeItem.purchase{
            cell.purchasedlabel.isHidden = true
        }else {
            cell.purchasedlabel.isHidden = false
            
            let blurEffect = UIBlurEffect(style: .dark)
            let viewBlur = UIVisualEffectView(effect: blurEffect)
            cell.layoutIfNeeded()
            viewBlur.frame = cell.imageview.bounds
            cell.imageview.addSubview(viewBlur)
        }
        return cell
    }
    
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let size = self.collectionView.bounds.size
        
        return CGSize(width: size.width-15, height: size.height-50)

    }
    
}

