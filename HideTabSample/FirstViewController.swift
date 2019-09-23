//
//  FirstViewController.swift
//  HideTabSample
//
//  Created by teakun on 2019/09/23.
//  Copyright © 2019 kittengine.com. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "First"
        self.view.backgroundColor = .red

        let button = UIButton()
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 60).isActive = true
        button.setTitle("Next", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
    }
    
    @objc func didTapButton() {
        navigationController?.pushViewController(SecondViewController(), animated: true)
    }
    
}
