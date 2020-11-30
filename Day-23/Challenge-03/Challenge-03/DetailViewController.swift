//
//  DetailViewController.swift
//  Challenge-03
//
//  Created by Florentino Lopez on 27/11/20.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    
    
    var selecionaPais: String?
    var nombrePais: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
        navigationItem.title = nombrePais
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.lightGray.cgColor
        
        if let imageToLoad = selecionaPais {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    @objc func shareTapped() {
        guard let imagen = imageView.image?.jpegData(compressionQuality: 0.8) else {
            print("No hay imagen")
            return
        }
        
        guard let nombreImagen = nombrePais else {
            print("No hay nombre de imagen")
            return
        }
        
        let actividadElementosParaNombrePais = "El nombre del pais es: \(nombreImagen)."
        
        let vc = UIActivityViewController(activityItems: [imagen, actividadElementosParaNombrePais as Any], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
    }

}

