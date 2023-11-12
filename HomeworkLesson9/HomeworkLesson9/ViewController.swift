//
//  ViewController.swift
//  HomeworkLesson9
//
//  Created by Иван Знак on 11/11/2023.
//

import UIKit


class ViewController: UIViewController {
    let customView = FirstView()
    override func viewDidLoad() {
        super.viewDidLoad()
        print(1)
        view.addSubview(customView)
        customView.translatesAutoresizingMaskIntoConstraints = false
        customView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        customView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        customView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        customView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
}

