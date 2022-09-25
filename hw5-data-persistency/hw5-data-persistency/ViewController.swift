//
//  ViewController.swift
//  hw5-data-persistency
//
//  Created by Nihad Allahveranov on 24.09.22.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let realm = try! Realm()
        
        /*
         This code writes the data in 'products.json' file to the RealmDatabase.
         
         var products = [Product]()
        
         if let url = Bundle.main.url(forResource: "products", withExtension: "json") {
             do {
                 let data = try Data(contentsOf: url)
                 let decoder = JSONDecoder()
                 products = try decoder.decode([Product].self, from: data)
            
             
             } catch {
                 print("error:\(error)")
             }
         }
        
         try! realm.write() {
             realm.add(products)
         }
        
         print("finish")
         */
        
        
        /*
         Sorted by product name
         
         let productsSorted = realm.objects(Product.self).sorted(byKeyPath: "pr_name")
         
         print(productSorted)
         */
    
        
        /*
         Blue color Products
         
         let blueProducts = realm.objects(Product.self).where { $0.pr_color == "blue"}
         
         print(blueProducts)
         */
        
        /*
         Material changed products
         
         let productsFiltered = realm.objects(Product.self).where { $0.pr_material == "Wooden" }

         print("number of changed products: \(productsFiltered.count)")

         try! realm.write() {
             productsFiltered.forEach( { product in
                 product.pr_material = "Cotton"
             })
         }
        
         let products = realm.objects(Product.self)
        
         print(products)
         */

        /*
         
         deletion products which price more than 600
         
         let products = realm.objects(Product.self)
         var productsPriceMoreThan600 = [Product]()
         
         for product in products {
             let price = Float(product.pr_price)
             
             if price ?? 0.0 > 600 {
                 productsPriceMoreThan600.append(product)
             }
         }
         
         try! realm.write() {
             realm.delete(productsPriceMoreThan600)
         }
         
         let productsAfterDeletion = realm.objects(Product.self)
         
         
         print("number of products after deletion: \(productsAfterDeletion.count)")
         
         print(productsAfterDeletion)
         */
        
        
        let products = realm.objects(Product.self)
        
        print(products)
        
        print("finish")
    }


}

