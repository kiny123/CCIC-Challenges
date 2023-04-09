//
//  CustomView.swift
//  CCIC-Challenge 2
//
//  Created by nikita on 09.04.2023.
//

import UIKit

final class CustomView: UIView {
    
    let blueView = UIView.makeView(color: .blue)
    let redView = UIView.makeView(color: .red)

    override init(frame: CGRect) { super.init(frame: frame)
        setupView()
    }

    required init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder)
        setupView()
    }

    private func setupView() {
        addSubview(blueView)
        addSubview(redView)
        
        NSLayoutConstraint.activate([
            blueView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25.0),
            blueView.topAnchor.constraint(equalTo: topAnchor, constant: 25.0),
            redView.topAnchor.constraint(equalTo: topAnchor, constant: 25.0),
            trailingAnchor.constraint(equalTo: redView.trailingAnchor, constant: 25.0),
            bottomAnchor.constraint(equalTo: redView.bottomAnchor, constant: 25.0),
            bottomAnchor.constraint(equalTo: blueView.bottomAnchor, constant: 25.0),
            
            redView.leadingAnchor.constraint(equalTo: blueView.trailingAnchor, constant: 25.0),
            redView.widthAnchor.constraint(equalTo: blueView.widthAnchor)
            
        ])
        
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
