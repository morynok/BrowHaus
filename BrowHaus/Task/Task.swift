//
//  Task.swift
//  BrowHaus
//
//  Created by corneliu postolache on 2/19/21.
//

import Foundation


class Task {
    
    static let instance = Task() // singleton
    
    private let service = [
        ServiceTypes(title: K.Services.titleBrows, imageName: K.Services.imageBrows),
        ServiceTypes(title: K.Services.titleLashes, imageName: K.Services.imageLashes),
        ServiceTypes(title: K.Services.titleLips, imageName: K.Services.imageLips),
        ServiceTypes(title: K.Services.titleFacial, imageName: K.Services.imageFacial),
        ServiceTypes(title: " Galery ", imageName: "gallery.jpg")
    ]
    
    private let brows = [ ServiceDescription(title: K.Services.titleBrows, imageName: K.Services.imageBrows, description: K.Services.descriptionBrows)]
    
    private let lashes = [ ServiceDescription(title: K.Services.titleLashes, imageName: K.Services.imageLashes, description: K.Services.descriptionLashes)]
    
    private let lips = [ ServiceDescription(title: K.Services.titleLips, imageName: K.Services.imageLips, description: K.Services.descriptionLips)]
    
    private let facial = [ ServiceDescription(title: K.Services.titleFacial, imageName: K.Services.imageFacial, description: K.Services.descriptionFacial)]
    
   
    func getService() -> [ServiceTypes] {
        return service
    }
    
    func getServiceDescription(forServiceTitle servicetitle: String) -> [ServiceDescription]{
        switch servicetitle {
        case K.Services.titleBrows:
            return getBrows()
        case K.Services.titleLashes:
            return getLashes()
        case K.Services.titleLips:
            return getLips()
        case K.Services.titleFacial:
            return getFacial()
        default:
            return getBrows()
        }
    }
    
    func getBrows() -> [ServiceDescription] {
        return brows
    }
    
    func getLashes() -> [ServiceDescription] {
        return lashes
    }
    
    func getLips() -> [ServiceDescription] {
        return lips
    }
    
    func getFacial() -> [ServiceDescription] {
        return facial
    }

}

