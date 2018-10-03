//
//  TabBarController.swift
//  True Dare or shots
//
//  Created by Diego on 24/09/18.
//  Copyright © 2018 diego. All rights reserved.
//


import UIKit
import SwipeableTabBarController

class TabBarController: SwipeableTabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        selectedIndex = 1
        selectedViewController = viewControllers![1]
        /// Set the animation type for swipe
        setSwipeAnimation(type: SwipeAnimationType.sideBySide)
        /// Set the animation type for tap
        setTapAnimation(type: SwipeAnimationType.sideBySide)
        
        /// Disable custom transition on tap.
        //        setTapTransitioning(transition: true)
        //setTabBarSwipe(enabled: true)
        /// Set swipe to only work when strictly horizontal.
        setDiagonalSwipe(enabled: true)
    }
    
//    override func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
//        // Handle didSelect viewController method here
//    }
}
