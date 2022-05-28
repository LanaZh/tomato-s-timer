//
//  ViewController.swift
//  tomatos
//
//  Created by Надежда Жукова on 28.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let lessonLabel : UILabel = {
        let label = UILabel()
        label.text = "Давай сконцентрируемся"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.textColor = .black
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let startButton : UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 20
        button.setTitle("Начнем", for: .normal)
        button.backgroundColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    let timerLabel : UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = UIFont.boldSystemFont(ofSize: 84)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setConstraints()
    }
}

extension ViewController {
    
    func setConstraints() {
        
        view.addSubview(lessonLabel)
        NSLayoutConstraint.activate([
            lessonLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            lessonLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            lessonLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        view.addSubview(startButton)
        NSLayoutConstraint.activate([
            startButton.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startButton.heightAnchor.constraint(equalToConstant: 70),
            startButton.widthAnchor.constraint(equalToConstant: 300)
            ])
            }
}
    



