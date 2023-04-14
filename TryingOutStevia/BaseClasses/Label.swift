//
//  Label.swift
//  DiamondHouse
//
//  Created by RCD on 13/10/2022.
//

import Foundation
import UIKit

class Label: UILabel {
 
    init(text: String, textColor: UIColor = .darkText, font: UIFont = .CustomFont(), numberOfLines: Int = 0) {
        super.init(frame: .zero)
        
        self.text = text
        self.textColor = textColor
        self.font = font
        self.numberOfLines = numberOfLines
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
