//
//  ViewController.swift
//  Navigation
//
//  Created by Pavel Nebogatov on 18.01.2022.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        setupTabBar()
        
    }
    
    func setupTabBar() {
        
        let feedViewController = createNavController(vc: feedViewController(), itemName: "Feed" , ItemImage: "quote.bubble")
        let profileViewController = createNavController(vc: profileViewController(), itemName: "Profile" , ItemImage: "person.circle")
        
        viewControllers = [feedViewController , profileViewController]
        
    }
    
    
    
    func createNavController(vc: UIViewController, itemName: String, ItemImage: String) -> UINavigationController {
        let item = UITabBarItem(title: itemName, image: UIImage(systemName: ItemImage), tag: 0)
        
        item.titlePositionAdjustment = .init(horizontal: 0, vertical: 10)
        
        let navController = UINavigationController(rootViewController: vc)
        navController.tabBarItem = item
        return navController
        
    }
    
    
}

 
