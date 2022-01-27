//
//  LoginViewController.swift
//  login
//
//  Created by Francisco Santana Cardoso on 24/01/22.
//

import UIKit

final class LoginViewControlle: UIViewController, LoginViewProtocol{
    
    lazy var myView = LoginView()
    
    func didSingInClick() {
        let view = SingInViewController()
        navigationController?.pushViewController(view, animated:true)
    }
    
    func didSingUpClick() {
        let alert = UIAlertController(title: "Sing Up Click", message: "Sing Up Click", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func loadView() {
        myView.delegate = self
        view = myView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

