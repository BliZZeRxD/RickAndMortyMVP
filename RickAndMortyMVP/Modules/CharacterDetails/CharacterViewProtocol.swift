//
//  CharacterViewProtocol.swift
//  RickAndMortyMVP
//
//  Created by Ayan on 08.06.2023.
//

import UIKit

protocol CharacterViewProtocol: UIViewController, CharacterRouterProtocol {
    func updateView(viewModel: CharacterViewModel)
}
