//
//  FirstViewController.swift
//  ReZero H-Challenge
//
//  Created by 김시훈 on 2022/09/30.
//

import UIKit

class FirstViewController: UIViewController {

    lazy var popButton: UIButton = {
       let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Pop Button", for: .normal)
        btn.backgroundColor = .red
        btn.addTarget(self, action: #selector(popButtonTapped), for: .touchUpInside)
        return btn
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(popButton)
        autoLayout()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    func autoLayout() {
        NSLayoutConstraint.activate([
            popButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            popButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            popButton.widthAnchor.constraint(equalToConstant: 200),
            popButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func popButtonTapped() {
        self.navigationController?.popViewController(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
