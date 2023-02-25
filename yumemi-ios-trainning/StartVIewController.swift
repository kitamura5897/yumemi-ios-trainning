//
//  StartVIewController.swift
//  yumemi-ios-trainning
//
//  Created by 喜多村海人 on 2023/02/25.
//

import UIKit

final class StartViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print(#function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        let weatherVC = WeatherViewController()
        weatherVC.modalPresentationStyle = .fullScreen
        present(weatherVC, animated: true)
        print(#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print(#function)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
}
