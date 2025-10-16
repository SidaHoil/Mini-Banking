//
//  ViewController.swift
//  MiniBanking
//
//  Created by Hoil Sida on 14/10/25.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let phoneView = InputView(text: "Phone number", placeHolder: "09645678")
        view.addSubview(phoneView)
        phoneView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor,padding: .init(top: 16, left: 16, bottom: 0, right: 16))
    }


    
}

