//
//  ViewController.swift
//  DepEd XI RAEL Evaluation
//
//  Created by DepEd IGACOS on 03/04/2018.
//  Copyright © 2018 DepEd IGACOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mainVC = UIViewController()
        let bgColor = UIColor(red: 232/255.0, green: 232/255.0, blue: 232/255.0, alpha: 1.0)
        mainVC.view.backgroundColor = bgColor
        
        let rootController = RootViewController(mainViewController: mainVC, topNavigationLeftImage: UIImage(named: "hamburger-menu-icon"))
        let menuVC = MenuViewController()
        let blueDrawerColor = UIColor(red: 1/255.0, green: 61/255.0, blue: 108/255.0, alpha: 0.95)
        menuVC.view.backgroundColor = blueDrawerColor
        
        let drawerVC = DrawerController(rootViewController: rootController, menuController: menuVC)
        
        self.addChildViewController(drawerVC)
        view.addSubview(drawerVC.view)
        drawerVC.didMove(toParentViewController: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

