//
//  ContactLaunchApp.swift
//  BrowHaus
//
//  Created by corneliu postolache on 2/23/21.
//

import UIKit

struct ContactLaunchApp { // to launch FB app from Contact screen
    
    func launchApp(decodedURL: String) {
        let alertPrompt = UIAlertController(title: "Open App", message: "You're going to open \(decodedURL)", preferredStyle: .actionSheet)
        let confirmAction = UIAlertAction(title: "Confirm", style: UIAlertAction.Style.default, handler: { (action) -> Void in
            
            if let url = URL(string: decodedURL) {
                if UIApplication.shared.canOpenURL(url) {
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                }
            }
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)
        
        alertPrompt.addAction(confirmAction)
        alertPrompt.addAction(cancelAction)
        
        //present(alertPrompt, animated: true, completion: nil)
        
    }
}
