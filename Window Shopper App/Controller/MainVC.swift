//
//  ViewController.swift
//  Window Shopper App
//
//  Created by Ajinkya Sonar on 11/09/18.
//  Copyright © 2018 Ajinkya Sonar. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var itemPriceTxt: CurrencyTextField!
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    let wageClass = Wage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showCalculateButton()
        
    }
    
    // Creating Button Programatically
    
    func showCalculateButton() {
        
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 60))
        
        calcButton.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0.9627300942)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcButton
        itemPriceTxt.inputAccessoryView = calcButton
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        itemPriceTxt.resignFirstResponder()
        return true
        
    }
    
    @objc func calculate() {
        
        if let wageTxt = wageTxt.text, let itemPriceTxt = itemPriceTxt.text {
            
            if let wage = Double(wageTxt), let price = Double(itemPriceTxt) {
                
                view.endEditing(true)
                
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                
                resultLbl.text = "\(wageClass.getHours(forWage: wage, andPrice: price))"
                
            }
            
        }
        
    }
    
    @IBAction func clearCalculatorTapped(_ sender: UIButton) {
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        itemPriceTxt.text = ""
        
        
    }
    
}

