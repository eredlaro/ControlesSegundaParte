//
//  ViewController.swift
//  controlesSegundaParete
//
//  Created by nicholas holden on 3/28/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var interruptor: UISwitch!
    @IBOutlet weak var progreso: UIProgressView!
    @IBOutlet weak var indicador: UIActivityIndicatorView!
    @IBOutlet weak var etiqueta: UILabel!
    @IBOutlet weak var steper: UIStepper!
    override func viewDidLoad() {
        super.viewDidLoad()
        etiqueta.isHidden = true
        steper.minimumValue = 0
        steper.maximumValue = 5
        //Switch
        interruptor.onTintColor = .red
        interruptor.isOn = false
        //progress
        progreso.progress = 0
        //indicadot
        indicador.hidesWhenStopped = true
    }

    @IBAction func switchAction(_ sender: Any) {
        if interruptor.isOn {
            etiqueta.isHidden = false
        }
        else {
            etiqueta.isHidden = true
        }
        
    }
    @IBAction func steperAction(_ sender: Any) {
        if (progreso.progress == 0.8)
        {
            indicador.stopAnimating()
        }else{
            indicador.startAnimating()
        }
       
        etiqueta.text = String(steper.value)
        progreso.progress = progreso.progress + 0.2
        
    }
    
}

