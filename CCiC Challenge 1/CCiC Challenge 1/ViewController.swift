//
//  ViewController.swift
//  CCiC Challenge 1
//
//  Created by nikita on 09.04.2023.
//

import UIKit

class ViewController: UIViewController {
    let padding: CGFloat = 50.0
    let spacing: CGFloat = 25.0
    
    let redView = UIView.makeView(color: .red)
    let greenView = UIView.makeView(color: .green)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    func setupView() {
        view.backgroundColor = .yellow
        view.addSubview(greenView)
        greenView.addSubview(redView)
                
        greenView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding).isActive = true
        greenView.topAnchor.constraint(equalTo: view.topAnchor, constant: padding).isActive = true
            greenView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding).isActive = true
        greenView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -100).isActive = true
        greenView.heightAnchor.constraint(equalTo: view.heightAnchor, constant: -100).isActive = true
            
            redView.leadingAnchor.constraint(equalTo: greenView.leadingAnchor, constant: spacing).isActive = true
            redView.trailingAnchor.constraint(equalTo: greenView.trailingAnchor, constant: -spacing).isActive = true
            redView.centerYAnchor.constraint(equalTo: greenView.centerYAnchor).isActive = true
            redView.heightAnchor.constraint(equalTo: greenView.heightAnchor, multiplier: 0.2).isActive = true
        
        
    }

}

extension UIView {
    static func makeView(color: UIColor) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = color
        return view
    }
}

