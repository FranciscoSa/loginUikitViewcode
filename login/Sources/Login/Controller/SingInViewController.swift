//
//  SingInViewController.swift
//  login
//
//  Created by Francisco Santana Cardoso on 26/01/22.
//

import UIKit

class SingInViewController: UIViewController, SingInViewProtocol {
    
    lazy var myView = SingInView()
    
    func didSingInClick() {
        print ("Sing In click")
    }
    
    override func loadView() {
        myView.delegate = self
        view = myView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
