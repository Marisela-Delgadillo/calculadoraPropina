//
//  ViewController.swift
//  calculadoraPropinas
//
//  Created by Alumno on 8/18/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtfDinero: UITextField!
    @IBOutlet weak var sldPropina: UISlider!
    @IBOutlet weak var lblPorcentajePropina: UILabel!
    @IBOutlet weak var lblPropina: UILabel!
    @IBOutlet weak var lblTotalPropina: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func doChangePropina(_ sender: Any) {
        
        let miString = "20.2"
        let miFloat = Float(miString)
        
        lblPorcentajePropina.text = "\(Int(sldPropina.value))%"
        let cuenta = Float(txtfDinero.text!) ?? 0.0
        let porcentajePropina = Float(Int(sldPropina.value))
        let propina = cuenta * porcentajePropina / 100
        lblPropina.text = String(format: "%.2f", propina)
        let total = cuenta + propina
        lblTotalPropina.text = String(format: "%.2f", total)
        
    }
    
    
    


}

