////
////  CharacterDetailsViewController.swift
////  RickAndMortyMVP
////
////  Created by Ayan on 07.06.2023.
////
//
// import SnapKit
// import UIKit
//
// class CharacterDetailsViewController: UIViewController, CharacterViewProtocol {
//    
//    let tabBar = UITabBarController()
//    
//    var presenter: CharacterPresenterProtocol!
//    var detailView: CharacterDetailView!
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        tabs()
//        detailView = CharacterDetailView()
//        detailView.initialize()
//        view.addSubview(detailView.view)
//    }
//    func tabs() {
//        let homeVC = UIViewController()
//        homeVC.view.backgroundColor = .green
//        let followingVC = UIViewController()
//        followingVC.view.backgroundColor = .yellow
//        
//        let item1 = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
//        let item2 = UITabBarItem(tabBarSystemItem: .downloads, tag: 1)
//        
//        homeVC.tabBarItem = item1
//        followingVC.tabBarItem = item2
//        
//        tabBar.viewControllers = [homeVC, followingVC]
//        
//        self.view.addSubview(tabBar.view)
//    }
// }
