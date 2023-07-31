//
//  MainViewController.swift
//  FirstGraduateWork
//
//  Created by Кирилл Демьянцев on 04.07.2023.
//

import UIKit

final class MainViewController: UIViewController {
    
    private enum SizeElement: CGFloat {
        case labelFont = 45
        case sizeEntryButton = 60
        case sizeSetupButton = 30
    }

    let setupController = SetupViewController()
    let recordViewController = RecordsTableViewController()
    
    let labelGame: UILabel = {
        var label = UILabel()
        label.text = ImageName.nameGame.rawValue
        label.font = UIFont(name: ImageName.labelGameStyle.rawValue,
                            size: SizeElement.labelFont.rawValue)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var entryGameButton: UIButton = {
       var button = UIButton()
        let largeConfig = UIImage.SymbolConfiguration(pointSize: SizeElement.sizeEntryButton.rawValue,
                                                      weight: .medium,
                                                      scale: .large)
        let largeBoldDoc = UIImage(systemName: ImageName.entryButtonImage.rawValue,
                                   withConfiguration: largeConfig)
        button.setImage(largeBoldDoc, for: .normal)
        button.tintColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(tapEntryGame), for: .touchUpInside)
        return button
    }()

    lazy var setupGameButton: UIButton = {
       var button = UIButton()
        let largeConfig = UIImage.SymbolConfiguration(pointSize: SizeElement.sizeSetupButton.rawValue,
                                                      weight: .medium,
                                                      scale: .large)
        let largeBoldDoc = UIImage(systemName: ImageName.setupButtonImage.rawValue,
                                   withConfiguration: largeConfig)
        button.setImage(largeBoldDoc, for: .normal)
        button.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(tapSetupGame), for: .touchUpInside)
        return button
    }()
    
    lazy var recordTableViewButton: UIButton = {
       var button = UIButton()
        let largeConfig = UIImage.SymbolConfiguration(pointSize: SizeElement.sizeSetupButton.rawValue,
                                                      weight: .medium,
                                                      scale: .large)
        let largeBoldDoc = UIImage(systemName: ImageName.recordTableImage.rawValue,
                                   withConfiguration: largeConfig)
        button.setImage(largeBoldDoc, for: .normal)
        button.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(tapRecordGame), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.gradientBoard()
        navigationItem.backButtonTitle = ""
        setupConstraints()
    }
    
    @objc private func tapEntryGame() {
        navigationController?.pushViewController(GameViewController(), animated: true)
    }
    
    @objc private func tapSetupGame() {
        navigationController?.pushViewController(SetupViewController(), animated: true)
    }
    
    @objc private func tapRecordGame() {
        navigationController?.pushViewController(recordViewController, animated: true)
    }
    
    //MARK: - Сonstraints
    private func setupConstraints() {
        
        [labelGame, entryGameButton, setupGameButton, recordTableViewButton].forEach {
            view.addSubview($0)
        }
        
        NSLayoutConstraint.activate([
            
            labelGame.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            labelGame.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            entryGameButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            entryGameButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            setupGameButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            setupGameButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -SizeElement.sizeSetupButton.rawValue),
            
            recordTableViewButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            recordTableViewButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: SizeElement.sizeSetupButton.rawValue)
        ])
    }
}
