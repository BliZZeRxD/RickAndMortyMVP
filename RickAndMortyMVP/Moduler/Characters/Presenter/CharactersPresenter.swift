//
//  CharactersPresenter.swift
//  RickAndMortyMVP
//
//  Created by Ayan on 06.06.2023.
//

import Foundation

//Получение данных с API, обработку ответа, и передачу данных на представление для отображения.

// MARK: - Network Manager
class CharactersPresenter: CharactersPresenterProtocol{
    
    weak var view: CharactersViewProtocol!
    
    init(view: CharactersViewProtocol, router: CharactersRouterProtocol) {
        self.view = view
    }
    public func getUsers(){
        guard let url = URL(string: "https://rickandmortyapi.com/api/character/2") else {return}
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            do{
                let users = try JSONDecoder().decode(Character.self, from: data)
            }
            catch{
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
}
