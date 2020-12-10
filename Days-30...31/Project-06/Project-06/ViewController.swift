//
//  ViewController.swift
//  Project-06
//
//  Created by Florentino Lopez on 10/12/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var btnFlag01: UIButton!
    @IBOutlet var btnFlag02: UIButton!
    @IBOutlet var btnFlag03: UIButton!
    
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    var respuestaPreguntaAcumulada = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        btnFlag01.layer.borderWidth = 1
        btnFlag02.layer.borderWidth = 1
        btnFlag03.layer.borderWidth = 1
        
        btnFlag01.layer.borderColor = UIColor.lightGray.cgColor
        btnFlag02.layer.borderColor = UIColor.lightGray.cgColor
        btnFlag03.layer.borderColor = UIColor.lightGray.cgColor
        
        askQuestion()
    }

    func askQuestion(action: UIAlertAction! = nil) {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        btnFlag01.setImage(UIImage(named: countries[0]), for: .normal)
        btnFlag02.setImage(UIImage(named: countries[1]), for: .normal)
        btnFlag03.setImage(UIImage(named: countries[2]), for: .normal)
        
        title = "Puntos: \(score), Adivina: \(countries[correctAnswer].uppercased())"
        
        respuestaPreguntaAcumulada += 1
    }
    
    @IBAction func btnTappedFlag(_ sender: UIButton) {
        var title: String
        var mensaje: String
        
        if sender.tag == correctAnswer {
            title = "Correct"
            score += 1
            mensaje = "Tus puntos son: \(score)"
        } else {
            title = "Wrong"
            score -= 1
            mensaje = "¡Incorrecto! Esa es la bandera de: \(countries[sender.tag].uppercased())"
        }
        
        
        if respuestaPreguntaAcumulada < 10 {
            let ac = UIAlertController(title: title, message: mensaje, preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
            present(ac, animated: true, completion: nil)
        } else {
            let ac = UIAlertController(title: "Juego Terminado", message: "Tu puntuación final es \(score)", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "De Acuerdo", style: .default, handler: { _ in self.title = "Puntaje: \(self.score)/10, Juego Terminado"
                self.btnFlag01.isUserInteractionEnabled = false
                self.btnFlag02.isUserInteractionEnabled = false
                self.btnFlag03.isUserInteractionEnabled = false
            }))
            present(ac, animated: true, completion: nil)
        }
    }
    
    // Day 22 of 100 Days Of Swift
    // Project-03: Add a bar button item that shows their score when tapped
    @objc func shareTapped() {
        let puntaje = "El puntaje de Banderas es: \(self.score) "
            
        let vc = UIActivityViewController(activityItems: [puntaje], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
    }
    
}
