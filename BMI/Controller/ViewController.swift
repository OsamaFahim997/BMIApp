//
//  ViewController.swift
//  BMI
//
//  Created by Osama Fahim on 20/12/2019.
//  Copyright © 2019 Osama Fahim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let BMI1 = BMI()
    
    @IBOutlet weak var weightText: UITextField!
    @IBOutlet weak var heightText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let weight = Float(weightText.text ?? "") ?? 0
        let height = Float(heightText.text ?? "") ?? 0
        var inputTest = true
        var inputTest1 = true
        inputTest = (weightText.text?.isNumeric())!
        inputTest1 = (heightText.text?.isNumeric())!
        let result = BMI1.CalculateBMI(weight: weight, Height: height)
        let result1 = String(Float(round(1000*result)/1000))
        
        
        if inputTest == false || inputTest1 == false {
            let alert = UIAlertController(title: "Error", message: "Please input only positive numbers", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
            
        else{
            inputTest1 = true
            inputTest = true
            resultLabel.text = result1
        if result < 18.5 {
            //UNDERWEIGHT
            let alert = UIAlertController(title: "Your Report", message: "Your body mass index (BMI) suggests you are a Under weight", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        else if result >= 18.5 && result <= 24.9{
            //HEALTHY
            let alert = UIAlertController(title: "Your Report", message: "Your body mass index (BMI) suggests you are a Healthy weight", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        else if result > 25.0 && result <= 29.9{
            //HEALTHY
            let alert = UIAlertController(title: "Your Report", message: "Your body mass index (BMI) suggests you are a Over weight", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        else{
            //OBESE
            let alert = UIAlertController(title: "Your Report", message: "Your body mass index (BMI) suggests you are a OBESE", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        }
        
    }
    
}


extension String {
    func isNumeric() -> Bool {
        guard self.characters.count > 0 else { return false }
        let nums: Set<Character> = [".","0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
        return Set(self.characters).isSubset(of: nums)
    }
}
