//
//  CharacterDetailsViewController.swift
//  RickAndMortyMVP
//
//  Created by Ayan on 07.06.2023.
//

import Foundation
import UIKit

class CharacterDetailsViewController: UIViewController, CharacterViewProtocol {

    var presenter: CharacterPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
        view.backgroundColor = .blue
    }
}
