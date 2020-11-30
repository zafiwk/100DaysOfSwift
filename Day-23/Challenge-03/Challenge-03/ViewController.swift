//
//  ViewController.swift
//  Challenge-03
//
//  Created by Florentino Lopez on 27/11/20.
//

import UIKit

class ViewController: UITableViewController {
    var banderas = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Visor de Banderas"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasSuffix(".png") {
                banderas.append(item)
            }
        }
        
        banderas.sort()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return banderas.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Country", for: indexPath)
        cell.imageView?.image = UIImage(named: banderas[indexPath.row])
        cell.textLabel?.text = banderas[indexPath.row].replacingOccurrences(of: ".png", with: "").uppercased()
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController {
            vc.selecionaPais = banderas[indexPath.row]
            vc.nombrePais = banderas[indexPath.row].replacingOccurrences(of: ".png", with: "")
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

