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
    
    @IBAction func openRegistryAlert(_ sender: Any) {
        var nametxt = UITextField()
        var destinytxt = UITextField()
        var pricetxt = UITextField()
        var packtxt = UITextField()
        let alert = UIAlertController(title: "Registrar", message: "Completa todos los datos", preferredStyle: .alert)
        alert.addTextField { alertTextField in
            alertTextField.placeholder = "Ingresa un nombre"
            nametxt = alertTextField
        }
        alert.addTextField { alertTextField in
            alertTextField.placeholder = "Ingresa un destino"
            destinytxt = alertTextField
        }
        alert.addTextField { alertTextField in
            alertTextField.placeholder = "Ingresa un precio"
            pricetxt = alertTextField
        }
        alert.addTextField { alertTextField in
            alertTextField.placeholder = "Ingresa un pack"
            packtxt = alertTextField
        }
        let action = UIAlertAction(title: "Registrar", style: .default, handler: {action in
            let name = nametxt.text
            let destiny = destinytxt.text
            let price = pricetxt.text
            let pack = packtxt.text
            self.registerPack(name: name, destiny: destiny, price: Double(price!), pack: pack)
        })
        alert.addAction(action)
        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    func registerPack(name: String?, destiny: String?, price: Double?, pack: String?) {
        if let name = name, let destiny = destiny, let price = price, let pack = pack {
            let package =  Package(name: name, destiny: destiny, price: price, pack: pack)
            packagesList.append(package)
            touristPackages.reloadData()
        }
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
