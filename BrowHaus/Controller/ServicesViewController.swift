//
//  ServiceViewController.swift
//  BrowHaus
//
//  Created by corneliu postolache on 2/18/21.
//

import UIKit

class ServicesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   

    @IBOutlet weak var serviceTable : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        serviceTable.dataSource = self
        serviceTable.delegate = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Task.instance.getService().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: K.ServicesVC.cellIdentifier) as? ServiceCell {
                let service = Task.instance.getService()[indexPath.row]
                cell.updateViews(service: service)
                return cell
            } else {
                return ServiceCell()
            }
        }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let service = Task.instance.getService()[indexPath.row]
        performSegue(withIdentifier: K.ServicesVC.sequeServices , sender: service)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let serviceDescription = segue.destination as? ServiceDescriptionViewController {
            assert(sender as? ServiceTypes != nil)
        serviceDescription.initService(service: sender as! ServiceTypes)
    }
    }





}
    
    
