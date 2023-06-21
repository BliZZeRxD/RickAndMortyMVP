//
//  EpisodesViewController.swift
//  RickAndMortyMVP
//
//  Created by Ayan on 16.06.2023.
//

import UIKit

class EpisodesViewController: UIViewController, EpisodesViewProtocol {
    var presenter: EpisodesPresenterProtocol!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
    }
}
