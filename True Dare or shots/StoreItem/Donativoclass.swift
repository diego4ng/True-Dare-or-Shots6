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
import StoreKit

class Donativoclass: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate , UICollectionViewDelegateFlowLayout,SKProductsRequestDelegate ,SKPaymentTransactionObserver{
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        
        updateStore()
        
        if self.storeCollection.count == 0{
            createItemStore(title: "Para un Boing", imagename: "moneda.jpeg", purchased: true, productIdentifier: "com.diegocorp.true.dare.or.shots9mx")
            createItemStore(title: "Pal chesco", imagename: "moneda2.jepg", purchased: false, productIdentifier: "com.diegocorp.true.dare.or.shots19mx")
            createItemStore(title: "Pa la cheve", imagename: "moneda3.jepg", purchased: false, productIdentifier: "com.diegocorp.true.dare.or.shots39mx")
            createItemStore(title: "pa la morra", imagename: "moneda4.jepg", purchased: false, productIdentifier: "com.diegocorp.true.dare.or.shots99mx")
           
            updateStore()
            self.collectionView.reloadData()
            
        }
        requestatappleproducts()
        
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
    
    func requestatappleproducts(){
        // generar un conjunto de ID de "product identifier"
        var productidentifiers = Set<String>()
        // Utilizaremos un for para recorrer core data"product identifier"
        for storeItem in self.storeCollection{
            if storeItem.productidentifier != "" {
                if let myID = storeItem.productidentifier{
                    productidentifiers.insert(myID)
                }
            }
        }
        
        let productsRequest = SKProductsRequest(productIdentifiers: productidentifiers)
        productsRequest.delegate = self
        productsRequest.start()
        }//corchete respuestaappleproducs
    
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        print ("hemos recibido respuesta de la appstore")
       print("productos disponibles \(response.products.count)")
      print("productos invalidos\(response.invalidProductIdentifiers)")
        //sincronizar los productos recibidos por itunnes conect con  coredata array
        self.products = response.products
        
        for product in response.products{
            print("\(product.localizedTitle):\(product.price)")
        }
        self.collectionView.reloadData()
    }
    
   


    var storeCollection = [StoreItem]()
    var products = [SKProduct]()

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
            
            for productos in self.products{
                if productos.productIdentifier == storeItem.productidentifier{
                    //ASIGNAR IDIOMA
                    let formatter = NumberFormatter()
                    formatter.numberStyle = NumberFormatter.Style.currency
                    formatter.locale = productos.priceLocale
                    if let price = formatter.string(from: productos.price)
                    {cell.purchasedlabel.text = "Donativo por \(price)"}
                    
                }
            }
            
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
    
    //seleccionar una cell
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storeitem = self.storeCollection[indexPath.row]
        
        if !storeitem.purchase{
            for product in self.products{
            
                if product.productIdentifier == storeitem.productidentifier{
            SKPaymentQueue.default().add(self)
                    let payment = SKPayment(product: product)
                    SKPaymentQueue.default().add(payment)
                }
            }
        }
    }
    
    
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        
        for transacion in transactions {
            
            switch transacion.transactionState{
                // case deferred
            case.deferred:
                print("deferred")
                break
                // case purchasing
            case .purchasing:
                print("purchasing")
                break
                // case purchased
            case .purchased:
                print("purchased")
                break
                // case failed
            case .failed:
                print("failed")
                break
                // case restored
            case .restored:
                print("restored")
                break

            }
            
            
        }
    
    }
    
    
}

