//
//  TabController.swift
//  newsCatcher
//
//  Created by Nazrin Atayeva on 18.01.24.
//

import UIKit

class TabController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
        //        self.tabBar.barTintColor = .cyan
        //        self.selectedIndex = 2
        self.tabBar.tintColor = .cyan
        self.tabBar.unselectedItemTintColor = .purple
        self.delegate = self
        
        let exercise = (self.viewControllers?[2] as? UINavigationController)?.viewControllers.first as? WorkoutController
        exercise?.view.backgroundColor = .systemMint
        
    }
    
    
    
    // MARK: - Tab setup
    private func setupTabs(){
        let home = self.createNav(with: "Home", and: UIImage(systemName: "house"), vc: HomeController())
        let history = self.createNav(with: "History", and: UIImage(systemName: "clock"), vc: HistoryController())
        let workout = self.createNav(with: "Workout", and: UIImage(systemName: "person"), vc: WorkoutController())
        self.setViewControllers([home, history, workout], animated: true)
    }
    
    // top part incl
    private func createNav(with title: String, and image: UIImage?, vc: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: vc)
        nav.tabBarItem.title = title
        nav.tabBarItem.image = image
        nav.viewControllers.first?.navigationItem.title = title + " Controller"
        nav.viewControllers.first?.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Button", style: .plain, target: nil, action: nil)
        return nav
    }
    
    
}
