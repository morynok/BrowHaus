//
//  ContactViewController.swift
//  BrowHaus
//
//  Created by corneliu postolache on 2/22/21.
//

import UIKit
import CoreLocation
import MapKit
import MessageUI



class ContactViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.requestWhenInUseAuthorization()
    }
    
    //MARK:- Launch Phone App when user tap the phone number button
    
    @IBAction func phonePressed(_ sender: UIButton) {
        if let url = URL(string: "tel://\(K.Contact.tel)") {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
        
    }
    
    //MARK:- Launch Safari when user tap the web link button
    
    @IBAction func webPressed(_ sender: UIButton) {
        if let url = URL(string: K.Contact.web) {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
    
    //MARK:- Launch Facebook when user tap the button
   // var contactLaunchApp = ContactLaunchApp()
    
    @IBAction func fbPressed(_ sender: UIButton) {
        if let url = URL(string: K.Contact.fb) {
                    if UIApplication.shared.canOpenURL(url) {
                        UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    }
                }
            }
    
    
    //MARK:- Launch Instagram app when user tap the button
    
    @IBAction func instagramPressed(_ sender: UIButton) {
        if let url = URL(string: K.Contact.insta) {
                    if UIApplication.shared.canOpenURL(url) {
                        UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    } else { // redirect to Safari - no Instagram app installed
                        let urlWeb = URL(string: K.Contact.instaUrl)!
                        UIApplication.shared.open(urlWeb, options: [:], completionHandler: nil)
                    }
                }

    }
    
    //MARK:- Launch WhatsApp when user tap the icon / button
    
    @IBAction func whatsappPressed(_ sender: UIButton) {
        if let url = URL(string: K.Contact.whatsapp) {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
    
    
   //MARK:- Launch Mail app when email button is pressed
    
    
    @IBOutlet weak var userInfo: UILabel! // to inform user if Mail App is configured or not
    @IBAction func ePressed(_ sender: UIButton) {
   
        if !MFMailComposeViewController.canSendMail() {
            userInfo.text = K.Contact.errortext
            return
        }
        
        let composeVC = MFMailComposeViewController()
        composeVC.mailComposeDelegate = self
         
        // Configure the fields of the interface.
        composeVC.setToRecipients([K.Contact.email])
        composeVC.setSubject(K.Contact.textSubject)
        composeVC.setMessageBody(K.Contact.textBody, isHTML: false)
         
        // Present the view controller modally.
        self.present(composeVC, animated: true, completion: nil)
        
        func mailComposeController(controller: MFMailComposeViewController,
                                   didFinishWithResult result: MFMailComposeResult, error: NSError?) {
            // Check the result or perform other tasks.
            
            // Dismiss the mail compose view controller.
            controller.dismiss(animated: true, completion: nil)
        }
    }
    
    
    //MARK:- Launch Maps to show user direction from his location
    
    @IBAction func launchMapsApp(_ sender: UIButton) {
        let latitude:CLLocationDegrees = K.Contact.latitude
        let longitude: CLLocationDegrees = K.Contact.longitude
        let regiondistance:CLLocationDistance = K.Contact.regiondistance
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionspan  = MKCoordinateRegion(center: coordinates, latitudinalMeters: regiondistance, longitudinalMeters: regiondistance)
        let options = [MKLaunchOptionsMapCenterKey:NSValue(mkCoordinate:regionspan.center), MKLaunchOptionsMapSpanKey:NSValue(mkCoordinateSpan:regionspan.span)]

        let placemark = MKPlacemark(coordinate: coordinates, addressDictionary: nil)
        let mapitem = MKMapItem(placemark: placemark)
        mapitem.name = K.Contact.name
        mapitem.openInMaps(launchOptions: options)
        
    }
}


