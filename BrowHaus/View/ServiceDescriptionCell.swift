//
//  ServiceDescriptionCell.swift
//  BrowHaus
//
//  Created by corneliu postolache on 2/21/21.
//

import UIKit

class ServiceDescriptionCell: UICollectionViewCell {
    
    @IBOutlet weak var serviceDescriptionCellTitle: UILabel!
    @IBOutlet weak var serviceDescriptionCellImage: UIImageView!
    @IBOutlet weak var serviceDescriptionCellDescription: UILabel!
    
    func updateViews(service: ServiceDescription) {
        serviceDescriptionCellTitle.text = service.title
        serviceDescriptionCellImage.image = UIImage(named: service.imageName)
        serviceDescriptionCellDescription.text = service.description

        
    }
    
    
}
