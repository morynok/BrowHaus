//
//  ServiceDescriptionViewController.swift
//  BrowHaus
//
//  Created by corneliu postolache on 2/21/21.
//

import UIKit

class ServiceDescriptionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    @IBOutlet weak var serviceCollection: UICollectionView!

    private(set) public var serviceDescription = [ServiceDescription]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        serviceCollection.delegate = self
        serviceCollection.dataSource = self
    }
   
    func initService(service: ServiceTypes) {
        serviceDescription = Task.instance.getServiceDescription(forServiceTitle: service.title)
        print(serviceDescription)
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return serviceDescription.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: K.ServiceDescriptionVC.cellIdentifier, for: indexPath) as? ServiceDescriptionCell {
            let service = serviceDescription[indexPath.row]
            cell.updateViews(service: service)
            return cell
            
        }
        
        return ServiceDescriptionCell()
        
    }
    
    
}
