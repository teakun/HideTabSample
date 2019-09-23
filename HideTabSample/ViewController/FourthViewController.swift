//
//  FourthViewController.swift
//  HideTabSample
//
//  Created by teakun on 2019/09/23.
//  Copyright © 2019 kittengine.com. All rights reserved.
//

import UIKit

extension FourthViewController: TabHide {}

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Fourth"
        self.view.backgroundColor = .lightGray
    }
}
