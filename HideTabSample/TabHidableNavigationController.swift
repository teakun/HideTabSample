//
//  TabHidableNavigationController.swift
//  HideTabSample
//
//  Created by teakun on 2019/09/23.
//  Copyright © 2019 kittengine.com. All rights reserved.
//

import UIKit

protocol TabHide: UIViewController {}

class TabHidableNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if viewController is TabHide {
            viewController.hidesBottomBarWhenPushed = true
        } else {
            children.forEach { (vc) in
                if vc is TabHide {
                    vc.hidesBottomBarWhenPushed = false
                }
            }
        }
        super.pushViewController(viewController, animated: animated)
    }
    
    
    override func popViewController(animated: Bool) -> UIViewController? {
        if children.count >= 3 {
            if children[children.count - 2] is TabHide {
                children[children.count - 2].hidesBottomBarWhenPushed = true
            }
        }
        return super.popViewController(animated: animated)
    }
    
    
}
