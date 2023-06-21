//
//  TabBarVC.swift
//  RickAndMortyMVP
//
//  Created by Ayan on 14.06.2023.
//

import UIKit
import SnapKit

class TabBarVC: UITabBarController, TabBarViewProtocol {
    
    var presenter: TabBarPresenterProtocol!
    let homeVC = UINavigationController(rootViewController: CharacterDetailsAssembly.createModule(userID: "42"))
    let episodesVC = UINavigationController(rootViewController: EpisodesAssembly.createModule())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateTabBar()
        viewControllers = [homeVC, episodesVC]
    }
    
    private func generateTabBar() {
        let item1 = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        let item2 = UITabBarItem(tabBarSystemItem: .downloads, tag: 1)
        homeVC.tabBarItem = item1
        episodesVC.tabBarItem = item2
    }
}
