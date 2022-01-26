//
//  LoginViewController.swift
//  login
//
//  Created by Francisco Santana Cardoso on 24/01/22.
//

import UIKit

final class LoginviewControlle : UIViewController {
    
    private var customView: LoginView? = nil
    private var customViewSing: SingInView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildView(viewNumber: 0)
    }
    
    private func buildView(viewNumber:Int){
        
    
//        view = LoginView()
//        customView = view as? LoginView
        
        view = SingInView()
        customViewSing = view as? SingInView
    }
}

