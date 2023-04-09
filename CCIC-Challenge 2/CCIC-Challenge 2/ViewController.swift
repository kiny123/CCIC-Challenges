//
//  ViewController.swift
//  CCIC-Challenge 2
//
//  Created by nikita on 09.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let customView: CustomView = {
        let view = CustomView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        view.backgroundColor = .yellow
        view.addSubview(customView)
        
        NSLayoutConstraint.activate([
            customView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50.0),
            customView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50.0),
            customView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50.0),
            customView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25)
        ])
    }


}

