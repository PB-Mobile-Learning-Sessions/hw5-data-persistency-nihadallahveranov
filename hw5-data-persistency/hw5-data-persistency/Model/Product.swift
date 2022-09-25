//
//  Product.swift
//  hw5-data-persistency
//
//  Created by Nihad Allahveranov on 24.09.22.
//

import Foundation
import RealmSwift

class Product: Object, Codable {
    @Persisted var pr_name: String
    @Persisted var pr_color: String
    @Persisted var pr_price: String
    @Persisted var pr_description: String
    @Persisted var pr_material: String
    @Persisted var pr_image: String
    @Persisted(primaryKey: true) var pr_id: String
    
    enum CodingKeys: String, CodingKey {
        case pr_name = "name",
             pr_color = "color",
             pr_price = "price",
             pr_description = "description",
             pr_material = "material",
             pr_image = "image",
             pr_id = "id"
      }
}
