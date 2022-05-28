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
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .black
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let timerImage : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "timer")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let labelInTimer : UILabel = {
        let label = UILabel()
        label.text = "25"
        label.font = UIFont.boldSystemFont(ofSize: 50)
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
    
    var timer = Timer()
    var durationTime = 1500
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setConstraints()
        
        startButton.addTarget(self, action: #selector(startButtonTapped), for: .touchUpInside)
    }
    
    @objc func startButtonTapped() {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
        
    }
    @objc func timerAction(){
        
        durationTime -= 1
        timerLabel.text = "\(durationTime)"
        print(durationTime)
        
        if durationTime == 0 {
            timer.invalidate()
        }
    }
}

extension ViewController {
    
    func setConstraints() {
        
        view.addSubview(lessonLabel)
        NSLayoutConstraint.activate([
            lessonLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            lessonLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            lessonLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        view.addSubview(timerImage)
        NSLayoutConstraint.activate([
            timerImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            timerImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            timerImage.heightAnchor.constraint(equalToConstant: 250),
            timerImage.widthAnchor.constraint(equalToConstant: 250)
        
        ])
        
        timerImage.addSubview(labelInTimer)
        NSLayoutConstraint.activate([
            labelInTimer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelInTimer.centerYAnchor.constraint(equalTo: view.centerYAnchor)
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
    



