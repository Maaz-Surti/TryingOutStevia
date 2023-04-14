//
//  BaseViewController.swift
//  RCD1
//
//  Created by Maaz on 07/09/22.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }

    func configure() {
        
        on("INJECTION_BUNDLE_NOTIFICATION") {
            self.loadView()
        }
        view.backgroundColor = .white
       // hideKeyboardWhenTappedAround()
        
    }
    
    func setConstraints() {
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        setConstraints()
    }
}
