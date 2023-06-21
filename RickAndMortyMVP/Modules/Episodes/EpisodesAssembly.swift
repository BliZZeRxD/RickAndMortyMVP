//
//  EpisodesAssembly.swift
//  RickAndMortyMVP
//
//  Created by Ayan on 16.06.2023.
//

import UIKit

struct EpisodesAssembly {

    static func createModule() -> EpisodesViewController {
        let view = EpisodesViewController()
        let presenter: EpisodesPresenterProtocol = EpisodesPresenter() as EpisodesPresenterProtocol
        view.presenter = presenter
        return view
    }
}
