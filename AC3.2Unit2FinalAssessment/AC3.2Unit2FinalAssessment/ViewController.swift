//
//  ViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Kareem James on 10/6/16.
//  Copyright © 2016 Kareem James. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var valueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextField.delegate = self
        // Do any additional setup after loading the view.
    }
    @IBAction func stepperTapped(_ sender: AnyObject) {
        slider.value = Float(stepper.value)
        inputTextField.text = "\(stepper.value)"
        
        valueLabel.text = "\(stepper.value)"
    }
    @IBAction func sliderChanged(_ sender: UISlider) {
        stepper.value = Double(slider.value)
        
        inputTextField.text = "\(slider.value)"
        
        valueLabel.text = "\(slider.value)"
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if let textFieldText = textField.text, let doubleText = Double(textFieldText), let floatText = Float(textFieldText) {
            slider.value = floatText
            stepper.value = doubleText
            valueLabel.text = textFieldText
        }
        
        return true
    }
}
