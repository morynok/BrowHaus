//
//  CategoryCell.swift
//  BrowHaus
//
//  Created by corneliu postolache on 2/19/21.
//

import UIKit

class ServiceCell: UITableViewCell {

    @IBOutlet weak var serviceImage: UIImageView!
    @IBOutlet weak var serviceTitle: UILabel!
 
    func updateViews(service: ServiceTypes) {
        serviceImage.image = UIImage(named: service.imageName)
        serviceTitle.text = service.title 
        
    }
    
   
}
