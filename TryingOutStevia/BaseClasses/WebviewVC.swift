////
////  WebviewVC.swift
////  Reflex
////
////  Created by RCD on 08/11/2022.
////
//
//import Foundation
//import UIKit
//import WebKit
//
//@MainActor class WebviewVC: UIViewController {
//    
//    let navBar: NavigationBar = {
//        
//        lazy var navBar = NavigationBar(showBackButton: true)
//        navBar.backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
//        return navBar
//        
//    }()
//    
//    let topView: UIView = {
//        
//        let view = UIView()
//        view.backgroundColor = Color.primary
//        return view
//        
//    }()
//    
//    lazy var loadingAnimation: UIActivityIndicatorView = {
//        
//        let view = UIActivityIndicatorView(style: .large)
//        view.hidesWhenStopped = true
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.isHidden = false
//        return view
//        
//    }()
//    
//    lazy var webView: WKWebView = {
//        
//        let webView = WKWebView()
//        webView.configuration.userContentController.addUserScript(Constants.getZoomDisableScript())
//        webView.navigationDelegate = self
//        return webView
//        
//    }()
//
//    
//    init(_ loadWithURL: URL) {
//        
//        super.init(nibName: nil, bundle: nil)
//        
//        webView.load(URLRequest(url: loadWithURL))
//        
//    }
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        configure()
//        addSubviews()
//        addConstraints()
//    }
//    
//    private func configure() {
//        
//        view.backgroundColor = .white
//    }
//    
//    @objc func backButtonTapped() {
//    
//        navigationController?.popViewController(animated: true)
//        
//    }
//    
//    private func addSubviews() {
//        
//        //view.addSubview(topView)
//        view.addSubview(navBar)
//        view.addSubview(webView)
//        view.addSubview(loadingAnimation)
//    }
//    
//    private func addConstraints(){
//        
//        
////        topView.anchor(top: nil, leading: view.leadingAnchor, trailing: view.trailingAnchor, bottom: navBar.topAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
////        topView.setHeight(100)
//        navBar.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, bottom: nil,padding: .init(top: 0, left: 0, bottom: 0, right: 0),size: CGSize(width: view.width, height: view.width/8.2))
//        
//        webView.anchor(top: navBar.bottomAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor)
//        
//        loadingAnimation.center = self.view.center
//
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        
//        addConstraints()
//        
//    }
//
//}
//
//extension WebviewVC: WKNavigationDelegate{
//    
//    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
//        loadingAnimation.isHidden = false
//        loadingAnimation.startAnimating()
//    }
//    
//    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
//        
//        loadingAnimation.stopAnimating()
//        loadingAnimation.isHidden = true
//    }
//}
//
