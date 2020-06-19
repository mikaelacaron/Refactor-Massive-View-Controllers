//
//  Coordinator.swift
//  HackingWithSwift
//
//  Created by Mikaela Caron on 6/19/20.
//  Copyright © 2020 Hacking with Swift. All rights reserved.
//

import UIKit

protocol Coordinator {
    
    var navigationController: UINavigationController { get set }
    var children: [Coordinator] { get set }
    func start()
    
}
