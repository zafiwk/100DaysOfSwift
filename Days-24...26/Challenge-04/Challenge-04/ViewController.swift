//
//  ViewController.swift
//  Challenge-04
//
//  Created by Florentino Lopez on 02/12/20.
//

import UIKit

class ViewController: UITableViewController {
    var sitiosWeb = ["oracle.com", "aws.amazon.com","postgresql.org", "ibm.com"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Navegador"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sitiosWeb.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Sitioweb", for: indexPath)
        cell.textLabel?.text = sitiosWeb[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController {
            vc.seleccionaSitioWeb = sitiosWeb[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

