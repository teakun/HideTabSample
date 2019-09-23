//
//  TabHidableNavigationController.swift
//  HideTabSample
//
//  Created by teakun on 2019/09/23.
//  Copyright © 2019 kittengine.com. All rights reserved.
//

import UIKit

class TabHidableNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if viewController is SecondViewController {
            viewController.hidesBottomBarWhenPushed = true
        } else {
            children.forEach { (vc) in
                if vc is SecondViewController {
                    vc.hidesBottomBarWhenPushed = false
                }
            }
        }
        super.pushViewController(viewController, animated: animated)
    }
    
    
    override func popViewController(animated: Bool) -> UIViewController? {
        if children.count >= 3 {
            if children[children.count - 2] is SecondViewController {
                children[children.count - 2].hidesBottomBarWhenPushed = true
            }
        }
        return super.popViewController(animated: animated)
    }
    
    
}
