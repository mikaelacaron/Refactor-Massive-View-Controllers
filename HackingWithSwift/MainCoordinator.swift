//
//  MainCoordinator.swift
//  HackingWithSwift
//
//  Created by Mikaela Caron on 6/19/20.
//  Copyright © 2020 Hacking with Swift. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    var children = [Coordinator]()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        navigationController.pushViewController(vc, animated: false)
    }
}
