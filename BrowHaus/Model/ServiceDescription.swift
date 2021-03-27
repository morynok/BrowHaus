//
//  ServiceDescription.swift
//  BrowHaus
//
//  Created by corneliu postolache on 2/21/21.
//

import Foundation


struct ServiceDescription {
    
   private(set) public var title: String
   private(set) public var imageName: String
   private(set) public var description: String
    
    init(title: String, imageName: String, description: String) {
        self.title = title
        self.imageName = imageName
        self.description = description
    }
    
}

