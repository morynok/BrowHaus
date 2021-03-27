//
//  BookingViewController.swift
//  BrowHaus
//
//  Created by corneliu postolache on 2/18/21.
//

import UIKit
import SwiftUI


class BookingViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {
    
    var serviceDetails: String = K.Picker.blank
    var dateTimeDetailsDay: String = K.Picker.blank
    var dateTimeDetailsMonth: String = K.Picker.blank
    var dateTimeDetailsTime: String = K.Picker.blank
    
    @IBOutlet weak var serviceTextBox: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.servicePicker.delegate = self
        self.servicePicker.dataSource = self
        
        
        servicePickerBrows = K.Picker.brows
        servicePickerLashes = K.Picker.lashes
        servicePickerLips = K.Picker.lips
        servicePickerFacial = K.Picker.facial
        
       
        
    }
    
    //MARK:- Service Picker
    
    @IBOutlet weak var servicePicker: UIPickerView!
    
    var servicePickerBrows: [String] = [String]()
    var servicePickerLashes: [String] = [String]()
    var servicePickerFacial: [String] = [String]()
    var servicePickerLips: [String] = [String]()
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 0 {
            return servicePickerBrows.count
        } else {
            if pickerView.tag == 1 {
                return servicePickerLashes.count
            } else {
                if pickerView.tag == 2 {
                    return servicePickerFacial.count
                } else {
                    return servicePickerLips.count
                }
            }
        }
    }
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            if pickerView.tag == 0 {
            return servicePickerBrows[row]
            } else {
                if pickerView.tag == 1 {
                    return servicePickerLashes[row]
                } else {
                    if pickerView.tag == 2 {
                        return servicePickerFacial[row]
                    } else {
                        return servicePickerLips[row]
                    }
                }
            }
        }
        
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
      
            if pickerView.tag == 0 {
                return getService(serviceDetails: servicePickerBrows[row])
            } else {
                if pickerView.tag == 1 {
                    return getService(serviceDetails: servicePickerLashes[row])
                } else {
                    if pickerView.tag == 2 {
                        return getService(serviceDetails: servicePickerFacial[row])
                    } else {
                        return print(servicePickerLips[row])
                    }
                }
            }
        }
        
        //MARK:- Date Picker
        
        @IBOutlet weak var dateTimePicker: UIDatePicker!
        
        
        @IBAction func datePickerChanged(_ sender: UIDatePicker) {
            
            print("print \(sender.date)")
            let dateFormatterDay = DateFormatter()
            let dateFormatterMonth = DateFormatter()
            let dateFormatterTime = DateFormatter()
            dateFormatterDay.dateFormat = "dd"
            dateFormatterMonth.dateFormat = "MMMM"
            dateFormatterTime.dateFormat = "HH:mm"
            let somedateStringDay = dateFormatterDay.string(from: sender.date)
            let somedateStringMonth = dateFormatterMonth.string(from: sender.date)
            let somedateStringTime = dateFormatterTime.string(from: sender.date)
            //print("Reservation for : Date - \(somedateStringDay) \(somedateStringMonth) hour -  \(somedateStringTime)")
//            getService(serviceDetails: somedateStringDay)
//            getService(serviceDetails: somedateStringMonth)
            getDateTime(dateTimeDetailsDay: somedateStringDay, dateTimeDetailsMonth: somedateStringMonth, dateTimeDetailsTime: (somedateStringTime))
            
        }

    
    func getService(serviceDetails: String) {
        var newServiceDetails: String = " "
        newServiceDetails.append(serviceDetails)
        serviceTextBox.text = newServiceDetails
    }
    
    func getDateTime( dateTimeDetailsDay: String, dateTimeDetailsMonth: String, dateTimeDetailsTime: String){
        var newdateTimeDetails: String = ""
        newdateTimeDetails.append(dateTimeDetailsDay)
            newdateTimeDetails.append(dateTimeDetailsMonth)
                newdateTimeDetails.append(dateTimeDetailsTime)
        serviceTextBox.text = newdateTimeDetails
        
    }
    
}



// only for date picker - github
//        let datePicker = UIDatePicker(frame: CGRect(x: 100, y: 100, width: self.view.frame.size.width, height: 100))
//        datePicker.datePickerMode = .time // setting mode to timer so user can only pick time as you want
//        datePicker.minuteInterval = 15  // with interval of 30
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat =  "HH:mm"
//        let min = dateFormatter.date(from: "9:00")      //createing min time
//        let max = dateFormatter.date(from: "21:00") //creating max time
//        datePicker.minimumDate = min  //setting min time to picker
//        datePicker.maximumDate = max  //setting max time to picker
//        print("ora selectata : \(datePicker.date)")
//        view.addSubview(datePicker)
