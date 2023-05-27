//
//  HomeViewController.swift
//  exploraya
//
//  Created by wilmer quispe on 14/05/23.
//

import UIKit

struct Package {
    var name: String
    var destiny: String
    var price: Double
    var pack: String
}

class HomeViewController: UIViewController, UITableViewDataSource {
    
    var packagesList: [Package] = []
    
    @IBOutlet weak var touristPackages: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        touristPackages.dataSource = self
        packagesList.append(Package(name: "Paquete 1", destiny: "Francia", price: 233, pack: "viaje"))
    }
    
    @IBAction func openAddModal(_ sender: Any) {
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return packagesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "packageCell", for: indexPath) as! PackageTableViewCell
        let package = packagesList[indexPath.row]
        cell.packageNameLabel.text = package.name
        cell.packageDestinyLabel.text = package.destiny
        cell.packagePriceLabel.text = String(package.price)
        cell.packagePackLabel.text = package.destiny
        return cell
    }
}
