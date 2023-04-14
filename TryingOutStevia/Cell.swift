//
//  Cell.swift
//  TryingOutStevia
//
//  Created by Maaz on 14/04/23.
//

import Foundation
import UIKit
import Stevia

class Cell: BaseTableViewCell {
    
    let label = Label(text: "Cell text")
    
    static let identifier = "cell"
    
    override func configure() {
        super.configure()
        
        backgroundColor = .lightGray
        
        subviews {
            
            label
        }
        
        label.Top == Top
        label.Leading == Leading
        label.Trailing == Trailing
        label.Bottom == Bottom
    }
}
