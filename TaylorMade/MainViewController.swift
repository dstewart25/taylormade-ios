//
//  MainViewController.swift
//  TaylorMade
//
//  Created by Daniel Stewart on 3/8/19.
//  Copyright © 2019 TaylorMade. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    lazy var testLabel: UILabel! = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "TEST"
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(testLabel)
        
        view.setNeedsUpdateConstraints()
    }
    
    override func updateViewConstraints() {
        setLabelContraints()
        super.updateViewConstraints()
    }
    
    func setLabelContraints() {
        NSLayoutConstraint.activate([
            testLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            testLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
    }
}
