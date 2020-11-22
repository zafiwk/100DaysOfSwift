//
//  DetailViewController.swift
//  Challenge-01
//
//  Created by Florentino Lopez on 21/11/20.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    
    var imageTotal: String?
    var imageNumber: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //title = selectedImage
        if let imageNumber = self.imageNumber,
        let imageTotal = self.imageTotal {
            title = "\(imageNumber) - \(imageTotal)"
        }
        
        navigationItem.largeTitleDisplayMode = .never

        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
