//
//  TextField.swift
//  DiamondHouse
//
//  Created by RCD on 13/10/2022.
//

import Foundation
import UIKit

class TextField: UITextField, UITextFieldDelegate {
    
    var insets = UIEdgeInsets()
    
    init(insets: UIEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)) {
        
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        self.insets = insets
        leftViewMode = .always
        delegate = self
        
    }

    init(placeholderString: String,
         placeholderFont: UIFont = .CustomFont(),
         borderColor: UIColor = .darkText,
         borderWidth: CGFloat = 0.5, placeholderTextColor: UIColor = .gray,
         textColor: UIColor = .darkText,
         cornerRadius: CGFloat = 14,
         insets: UIEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        ) {
        super.init(frame: .zero)

        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidth
        let attributes = [NSAttributedString.Key.foregroundColor: placeholderTextColor, .font : placeholderFont]
        let attributedPlaceholder = NSAttributedString(string: placeholderString, attributes: attributes)
        self.attributedPlaceholder = attributedPlaceholder
        self.layer.cornerRadius = cornerRadius
        self.insets = insets
        
        self.tintColor = .black
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        
        return bounds.inset(by: insets)
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return  bounds.inset(by: insets)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
