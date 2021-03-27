//
//  ServiceTypes.swift
//  BrowHaus
//
//  Created by corneliu postolache on 2/19/21.
//

import Foundation


struct ServiceTypes {
    
   private(set) public var title: String
   private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
    
}
