//
//  ViewController.swift
//  Calculator Layout iOS13
//
//  Created by Angela Yu on 01/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var calculation: Calculation?
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calculation = CalculationImpl() { displayLabel in
            print(displayLabel)
            self.resultLabel.text = displayLabel
        }
    }
    
    @IBAction func onButtonClick(_ sender: UIButton) {
        let clickedButtonLabel = sender.titleLabel?.text ?? ""
        print("onButtonClick = \(clickedButtonLabel)")
        calculation?.parseAction(label: clickedButtonLabel)
    }
}

