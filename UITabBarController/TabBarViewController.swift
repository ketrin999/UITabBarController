//
//  TabBarViewController.swift
//  UITabBarController
//
//  Created by Ekaterina Yashunina on 22.09.2023.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTabs()

        self.selectedIndex = 2

        self.tabBar.barTintColor = .red
        self.tabBar.tintColor = .green
        self.tabBar.unselectedItemTintColor = .purple

    }

    //MARK: - Tab setup

    private func setupTabs() {

        let home = self.createNav(with: "Home", and: UIImage(systemName: "house"), vc: HomeController())
        let history = self.createNav(with: "History", and: UIImage(systemName: "clock"), vc: HistoryViewController())
        let workout = self.createNav(with: "Workout", and: UIImage(systemName: "person"), vc: WorkoutViewController())
        let exercise = self.createNav(with: "Exercise", and: UIImage(systemName: "cloud.snow"), vc: ExerciseViewController())

        self.setViewControllers([home, history, workout, exercise], animated: true)
    }

    private func createNav(with title: String, and image: UIImage?, vc: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: vc)

        nav.tabBarItem.title = title
        nav.tabBarItem.image = image

        nav.viewControllers.first?.navigationItem.title = title + " Controller"
        nav.viewControllers.first?.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Button", style: .plain, target: nil, action: nil)

        return nav
    }

}
