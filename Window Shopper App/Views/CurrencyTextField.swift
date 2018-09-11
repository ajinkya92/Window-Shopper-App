//
//  CurrencyTextField.swift
//  Window Shopper App
//
//  Created by Ajinkya Sonar on 11/09/18.
//  Copyright © 2018 Ajinkya Sonar. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    
    // Never Call super on draw rect function
    // Use on if you want to draw or add any subview
    override func draw(_ rect: CGRect) {
        
        let size: CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLabel.backgroundColor = #colorLiteral(red: 0.5699706125, green: 0.5949031781, blue: 0.6666666865, alpha: 0.8)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLabel.text = formatter.currencySymbol
        
        addSubview(currencyLabel)
    }
    
    override func prepareForInterfaceBuilder() {
        
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        customizeView()
        
    }
    
    func customizeView() {
        
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25) // Used color Literal here
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
        
        
        if let placeHolderText = placeholder {
            
            let place = NSAttributedString(string: placeHolderText, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
            
        }
        
    }
    
}
