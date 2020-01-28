//
//  MainView.swift
//  Lab31_ProgUI_ColorGame
//
//  Created by Juan Ceballos on 1/28/20.
//  Copyright © 2020 Juan Ceballos. All rights reserved.
//

import UIKit

class MainView: UIView {

    
    //imageView composed of color rgb
    // 3 buttons representing rgb
    
    
    let guessMessage = "Guess Dominant Color"
    
    public lazy var colorView: UIView =    {
        let view = UIView()
        view.backgroundColor = .systemGray
        return view
    }()
    
    private lazy var redButton: UIButton =  {
        let redButton = UIButton()
        redButton.backgroundColor = .systemRed
        return redButton
    }()
    
    private lazy var greenButton: UIButton =  {
        let greenButton = UIButton()
        greenButton.backgroundColor = .systemGreen
        return greenButton
    }()
    
    private lazy var blueButton: UIButton =  {
        let blueButton = UIButton()
        blueButton.backgroundColor = .systemBlue
        return blueButton
    }()
    
    private lazy var messageLabel: UILabel =    {
        let guessLabel = UILabel()
        guessLabel.text = guessMessage
        return guessLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit()    {
        setupColorViewConstraints()
        setupButtonConstraints()
        setUpGuessLabelConstraints()
    }
    
    
    private func setupColorViewConstraints() {
        addSubview(colorView)
        
        colorView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            colorView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 0),
            colorView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: 0),
            colorView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            colorView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.4)
        ])
    }
    
    private func setupButtonConstraints()   {
        
        addSubview(redButton)
        addSubview(blueButton)
        addSubview(greenButton)
        
        redButton.translatesAutoresizingMaskIntoConstraints = false
        blueButton.translatesAutoresizingMaskIntoConstraints = false
        greenButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            redButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            redButton.topAnchor.constraint(equalTo: colorView.bottomAnchor, constant: 20),
            
            blueButton.leadingAnchor.constraint(equalTo: redButton.trailingAnchor, constant: 20),
            blueButton.topAnchor.constraint(equalTo: colorView.bottomAnchor, constant: 20),
            
            greenButton.leadingAnchor.constraint(equalTo: blueButton.trailingAnchor, constant: 20),
            greenButton.topAnchor.constraint(equalTo: colorView.bottomAnchor, constant: 20)

        ])
    }
    
    private func setUpGuessLabelConstraints()   {
        addSubview(messageLabel)
        
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            messageLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            messageLabel.topAnchor.constraint(equalTo: redButton.bottomAnchor, constant: 20)
            
        ])
    }
}
