//
//  SignInViewController.swift
//  exploraya
//
//  Created by wilmer quispe on 5/05/23.
//

import UIKit

class SignInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        let mainTabBarViewController = storyboard?.instantiateViewController(identifier: "MainTabBarViewController") as! MainTabBarViewController
        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.window?.rootViewController = mainTabBarViewController
    }
}
