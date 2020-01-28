//
//  ViewController.swift
//  Lab31_ProgUI_ColorGame
//
//  Created by Juan Ceballos on 1/28/20.
//  Copyright © 2020 Juan Ceballos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let colorGuessGenerator = ColorGuessingModel()

    private let mainView = MainView()
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemTeal
        mainView.colorView.backgroundColor = colorGuessGenerator.getNewColor()
    }


}

