//
//  TabBarVC.swift
//  RickAndMortyMVP
//
//  Created by Ayan on 14.06.2023.
//

import UIKit

class TabBarVC: UIViewController, TabBarViewProtocol {
    var presenter: TabBarPresenterProtocol!
    
    let homeVC = CharacterDetailsAssembly()
    let episodesVC = UIViewController()
}
