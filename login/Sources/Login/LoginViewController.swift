//
//  LoginViewController.swift
//  login
//
//  Created by Francisco Santana Cardoso on 24/01/22.
//

import UIKit

final class LoginviewControlle : UIViewController {
    
    private var loginView: LoginView? = nil
    private var singInView: SingInView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildView()
    }
    
    @objc private func buildView(){
        view = LoginView()
        loginView = view as? LoginView
        loginView?.buttonSingIn.addTarget(self, action: #selector(singInClick), for:UIControl.Event.touchUpInside)
    }
    
    @objc private func singInClick (sender : UIButton!){
        view = SingInView()
        singInView = view as? SingInView
        singInView?.buttonReturn.addTarget(self, action:#selector(buildView), for: UIControl.Event.touchUpInside)
    }
}

