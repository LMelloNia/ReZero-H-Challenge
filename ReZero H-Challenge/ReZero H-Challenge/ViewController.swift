//
//  ViewController.swift
//  ReZero H-Challenge
//
//  Created by 김시훈 on 2022/09/30.
//

import UIKit

class ViewController: UIViewController {

    lazy var pushButton: UIButton = {
       let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Push Button", for: .normal)
        btn.backgroundColor = .red
        btn.addTarget(self, action: #selector(pushButtonTapped), for: .touchUpInside)
        return btn
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        autoLayout()
        // Do any additional setup after loading the view.
    }
    
    func setupUI() {
        [
        pushButton
        ].forEach{view.addSubview($0)}
        
    }
    
    func autoLayout() {
        NSLayoutConstraint.activate([
            pushButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pushButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -300),
            pushButton.widthAnchor.constraint(equalToConstant: 200),
            pushButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    
    @objc func pushButtonTapped() {
        let vc = FirstViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

