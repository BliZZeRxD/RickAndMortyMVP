//
//  CharacterDetailViewController.swift
//  RickAndMortyMVP
//
//  Created by Ayan on 11.06.2023.
//

import UIKit
import SnapKit

class CharacterDetailViewController: UIViewController, CharacterViewProtocol {
    
    var presenter: CharacterPresenterProtocol!
    let profileImage = UIImageView()
    let stackView = UIStackView()
    let nameLabel = UILabel()
    let statusLabel = UILabel()
    let speciesLabel = UILabel()
    let genderLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupStackView()
        initialize()
        presenter.viewDidLoad()
    }
    
    func initialize() {
        view.backgroundColor = UIColor(red: 38/255, green: 44/255, blue: 58/255, alpha: 1)
        
        view.addSubview(profileImage)
        profileImage.clipsToBounds = true
        profileImage.layer.cornerRadius = 50
        profileImage.layer.borderWidth = 1
        profileImage.layer.borderColor = UIColor.black.withAlphaComponent(0.1).cgColor
        
        profileImage.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(30)
            make.top.equalToSuperview().inset(100)
            make.width.equalTo(100)
            make.height.equalTo(100)
        }
        view.addSubview(stackView)
        stackView.snp.makeConstraints { make in
            make.left.equalTo(profileImage).inset(120)
            make.top.equalToSuperview().inset(100)
        }
        nameLabel.font = UIFont.systemFont(ofSize: 20)
        nameLabel.textColor = UIColor(red: 178/255, green: 223/255, blue: 40/255, alpha: 1)
        statusLabel.textColor = .white
        speciesLabel.textColor = .white
        genderLabel.textColor = .white
//        statusLabel.numberOfLines = 0
//        view.addSubview(statusLabel)
//        statusLabel.snp.makeConstraints { make in
//            make.left.right.equalToSuperview().inset(30)
//            make.top.equalTo(nameLabel).inset(30)
//        }
//
//        speciesLabel.numberOfLines = 0
//        view.addSubview(speciesLabel)
//        speciesLabel.snp.makeConstraints { make in
//            make.left.right.equalToSuperview().inset(30)
//            make.top.equalTo(statusLabel).inset(30)
//        }
//
//        genderLabel.numberOfLines = 0
//        view.addSubview(genderLabel)
//        genderLabel.snp.makeConstraints { make in
//            make.left.right.equalToSuperview().inset(30)
//            make.top.equalTo(speciesLabel).inset(30)
//        }

        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 178/255, green: 223/255, blue: 40/255, alpha: 1)
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Test", for: .normal)
        button.layer.cornerRadius = 20
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(250)
            make.bottom.equalToSuperview().inset(100)
            make.height.equalTo(40)
        }
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
    }
    
    @objc private func buttonTapped() {
        print("Great")
    }
    func updateView(viewModel: CharacterViewModel) {
        DispatchQueue.main.async {
            self.nameLabel.text = viewModel.characterName
            self.statusLabel.text = viewModel.characterStatus
            self.speciesLabel.text = viewModel.characterSpecies
            self.genderLabel.text = viewModel.characterGender
            self.profileImage.downloaded(from: viewModel.characterImage ?? "rick")
        }
    }
    func setupStackView() {
        stackView.axis = .vertical
        stackView.spacing = 5
        stackView.alignment = .fill
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(statusLabel)
        stackView.addArrangedSubview(speciesLabel)
        stackView.addArrangedSubview(genderLabel)
    }
}
