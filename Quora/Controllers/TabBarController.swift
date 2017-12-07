//
//  TabBarController.swift
//  Quora
//
//  Created by Mirzhan Gumarov on 12/6/17.
//  Copyright © 2017 Mirzhan Gumarov. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    let homePage = HomePage()
    let answerListPage = AnswerListPage()
    let profilePage = ProfilePage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tabBar.tintColor = Constants.quoraMainColor
    
        homePage.tabBarItem = UITabBarItem(title: "Home", image: #imageLiteral(resourceName: "home"), tag: 0)
        answerListPage.tabBarItem = UITabBarItem(title: "Answer", image: #imageLiteral(resourceName: "answer"), tag: 1)
        profilePage.tabBarItem = UITabBarItem(title: "Profile", image: #imageLiteral(resourceName: "account"), tag: 2)
        
        let viewControllerList = [homePage, answerListPage, profilePage]
        
        viewControllers = viewControllerList.map { UINavigationController(rootViewController: $0) }
    }
    
}
