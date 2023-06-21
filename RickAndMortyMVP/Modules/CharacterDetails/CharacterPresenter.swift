//
//  CharacterPresenter.swift
//  RickAndMortyMVP
//
//  Created by Ayan on 08.06.2023.
//

import Foundation

class CharacterPresenter: CharacterPresenterProtocol {

    var resultText: String
    var view: CharacterViewProtocol?
    var user: Character?
    
    init(resultText: String, view: CharacterViewProtocol) {
        self.resultText = resultText
        self.view = view
    }
    
    func viewDidLoad() {
        getUsers()
    }

    public func getUsers() {
        guard let url = URL(string:
        "https://rickandmortyapi.com/api/character/\(resultText)") else {return}
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let user = try JSONDecoder().decode(Character.self, from: data)
                self?.user = user
            
                let viewModel = CharacterViewModel(character: user)
                
                self?.view?.updateView(viewModel: viewModel)
            } catch {
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
}

struct CharacterViewModel {
    let characterImage: String?
    let characterName: String?
    let characterSpecies: String?
    let characterStatus: String?
    let characterGender: String?
    
    init(character: Character) {
        characterImage = character.image
        characterName = character.name
        characterSpecies = character.species
        characterStatus = character.status
        characterGender = character.gender
    }
}
