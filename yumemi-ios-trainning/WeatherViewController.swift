//
//  WeatherViewController.swift
//  yumemi-ios-trainning
//
//  Created by 喜多村海人 on 2023/02/19.
//

import UIKit
import YumemiWeather

final class WeatherViewController: UIViewController {
    
    private let weatherImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let rightlabel: UILabel = {
        let label = UILabel()
        label.textColor = .red
        label.text = "--"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 25, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let leftlabel: UILabel = {
        let label = UILabel()
        label.textColor = .blue
        label.text = "--"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 25, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var labelStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [leftlabel, rightlabel])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var rightbutton: UIButton = {
        let button = UIButton()
        button.setTitle("Reload", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.masksToBounds = true
        button.addTarget(self, action: #selector(rightButtonDidTap), for: .touchUpInside)
        return button
    }()
    
    private lazy var leftbutton: UIButton = {
        let button = UIButton()
        button.setTitle("Close", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.masksToBounds = true
        return button
    }()
    
    private lazy var buttonStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [leftbutton, rightbutton])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var totalStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [weatherImageView, labelStackView])
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstraint()
    }
}

private extension WeatherViewController {
    
    func setupView() {
        view.backgroundColor = .systemBackground
        view.addSubview(totalStackView)
        view.addSubview(buttonStackView)
    }
    
    func setupConstraint() {
<<<<<<< HEAD
        NSLayoutConstraint.activate([
            totalStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            totalStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageview.widthAnchor.constraint(equalToConstant: 200),
            imageview.heightAnchor.constraint(equalTo: imageview.widthAnchor),
            buttonStackView.topAnchor.constraint(equalTo: totalStackView.bottomAnchor, constant: 80),
            buttonStackView.centerXAnchor.constraint(equalTo: totalStackView.centerXAnchor),
            buttonStackView.widthAnchor.constraint(equalTo: totalStackView.widthAnchor),
        ])
=======
        [totalStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
         totalStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
         
         weatherImageView.widthAnchor.constraint(equalToConstant: 200),
         weatherImageView.heightAnchor.constraint(equalTo: weatherImageView.widthAnchor),
         
         buttonStackView.topAnchor.constraint(equalTo: totalStackView.bottomAnchor, constant: 80),
         buttonStackView.centerXAnchor.constraint(equalTo: totalStackView.centerXAnchor),
         buttonStackView.widthAnchor.constraint(equalTo: totalStackView.widthAnchor)].forEach { $0.isActive = true }
>>>>>>> 4f9408c (imageViewの命名変更)
    }
    
    @objc func rightButtonDidTap() {
        let weatherString = YumemiWeather.fetchWeatherCondition()
        guard let weather = Weather(rawValue: weatherString) else { return }
        weatherImageView.image = weather.image
    }
}

