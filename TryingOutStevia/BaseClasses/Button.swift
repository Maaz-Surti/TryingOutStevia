//
//  Button.swift
//  Reflex
//
//  Created by Maaz on 26/09/22.
//

import Foundation
import UIKit

class Button: UIButton {
    
    /// This subclass is to increase the tappable area of the button
    
    @IBInspectable var margin:CGFloat = 30.0
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        //increase touch area for control in all directions by 20
        
        let area = CGRectInset(self.bounds, -margin, -margin)
        return CGRectContainsPoint(area, point)
    }
    
    init(title: String, titleColor: UIColor = .white, font: UIFont = .CustomFont(), backgroundColor: UIColor = .link) {
        
        super.init(frame: .zero)
        
        setTitle(title, for: .normal)
        
        setTitleColor(titleColor, for: .normal)
        
        self.backgroundColor = backgroundColor
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = height/2
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
