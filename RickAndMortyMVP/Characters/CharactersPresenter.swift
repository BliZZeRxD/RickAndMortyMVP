//
//  CharactersPresenter.swift
//  RickAndMortyMVP
//
//  Created by Ayan on 06.06.2023.
//

import Foundation

// Получение данных с API, обработку ответа, и передачу данных на представление для отображения.

// MARK: - Network Manager
class CharactersPresenter: CharactersPresenterProtocol {

    weak var view: CharactersViewProtocol!

    init(view: CharactersViewProtocol, router: CharactersRouterProtocol) {
        self.view = view
    }
}
