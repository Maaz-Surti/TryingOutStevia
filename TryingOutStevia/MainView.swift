//
//  MainView.swift
//  TryingOutStevia
//
//  Created by Maaz on 14/04/23.
//

import Foundation
import UIKit
import Stevia

class MainView: BaseView {
    
    let label = Label(text: "This is a test label", textColor: .red, font: .CustomFont(.extraBold, size: 24))
    
    let emailField = TextField(placeholderString: "Please enter your email")
    
    let passwordField = TextField(placeholderString: "Please enter your password")
    
    let loginButton = Button(title: "Login", font: .CustomFont(.bold, size: 18))
    
    let scrollView = UIScrollView()
    
    let view = UIView()
    
    lazy var table: UITableView = {
        
        let table = UITableView()
        table.register(Cell.self, forCellReuseIdentifier: Cell.identifier)
        return table
    
    }()

    override func configure() {
        super.configure()
        
        subviews {
            
            label
            emailField
            passwordField
            loginButton
            table
//            scrollView.subviews {
//
//
//
//            }

        }
        
//        scrollView.Top == safeAreaLayoutGuide.Top
//        scrollView.Left == safeAreaLayoutGuide.Left
//        scrollView.Right == safeAreaLayoutGuide.Right
//        scrollView.Bottom == safeAreaLayoutGuide.Bottom
        
        label.Top == safeAreaLayoutGuide.Top + 10
        label.CenterX == self.CenterX

        emailField.Top == label.Bottom + 24
        emailField.CenterX == CenterX
        emailField.Width == Width/1.5
        emailField.Height == 32
        
        passwordField.Top == emailField.Bottom + 14
        passwordField.CenterX == CenterX
        passwordField.Width == Width/1.5
        passwordField.Height == 32
        
        loginButton.Top == passwordField.Bottom + 24
        loginButton.Width == 160
        loginButton.CenterX == CenterX
        loginButton.Height == 40
        
//        table.Top == loginButton.Bottom
//        table.Left == Left
//        table.Right == Right
        //table.Bottom == scrollView.Bottom
    }
    
}

