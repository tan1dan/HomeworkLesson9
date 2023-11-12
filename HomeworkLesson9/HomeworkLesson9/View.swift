//
//  View.swift
//  HomeworkLesson9
//
//  Created by Иван Знак on 11/11/2023.
//

import UIKit

class FirstView: UIView {
    
    private let textFieldOne = UITextField()
    private let textFieldTwo = UITextField()
    private let textFieldThree = UITextField()
    
    private let labelOne = UILabel()
    private let labelTwo = UILabel()
    private let labelThree = UILabel()
    
    private let image = UIImage(named: "prog")
    private let stackView = UIStackView()
    let labelAndTextFieldView1 = UIView()
    let labelAndTextFieldView2 = UIView()
    let labelAndTextFieldView3 = UIView()
    override init(frame: CGRect) {
        super.init(frame: frame)
        // Arrays
        let arrayLabels = [labelOne, labelTwo, labelThree]
        let arrayTextFields = [textFieldOne, textFieldTwo, textFieldThree]
        let arrayViews = [labelAndTextFieldView1, labelAndTextFieldView2, labelAndTextFieldView3]
        
        let imageView = UIImageView(image: image)
        
        // Add labels and textfields to Views
        for i in 0...2 {
            arrayViews[i].addSubview(arrayLabels[i])
            arrayViews[i].addSubview(arrayTextFields[i])
        }
        
        addSubview(imageView)
        addSubview(stackView)
        
        //translatesAutoresizingMaskIntoConstraints
        imageView.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        for i in 0...2 {
            arrayLabels[i].translatesAutoresizingMaskIntoConstraints = false
            arrayTextFields[i].translatesAutoresizingMaskIntoConstraints = false
            arrayViews[i].translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            //Constraints - image
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.leadingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -6),
            //Constraints Labels
            labelOne.topAnchor.constraint(equalTo: labelAndTextFieldView1.topAnchor),
            labelOne.trailingAnchor.constraint(equalTo: labelAndTextFieldView1.trailingAnchor),
            labelOne.bottomAnchor.constraint(equalTo: labelAndTextFieldView1.bottomAnchor),
            
            labelTwo.topAnchor.constraint(equalTo: labelAndTextFieldView2.topAnchor),
            labelTwo.trailingAnchor.constraint(equalTo: labelAndTextFieldView2.trailingAnchor),
            labelTwo.bottomAnchor.constraint(equalTo: labelAndTextFieldView2.bottomAnchor),
            
            labelThree.topAnchor.constraint(equalTo: labelAndTextFieldView3.topAnchor),
            labelThree.trailingAnchor.constraint(equalTo: labelAndTextFieldView3.trailingAnchor),
            labelThree.bottomAnchor.constraint(equalTo: labelAndTextFieldView3.bottomAnchor),
            
            //Constraints TextFields
            textFieldOne.topAnchor.constraint(equalTo: labelAndTextFieldView1.topAnchor),
            textFieldOne.leadingAnchor.constraint(equalTo: labelAndTextFieldView1.leadingAnchor),
            textFieldOne.bottomAnchor.constraint(equalTo: labelAndTextFieldView1.bottomAnchor),
            textFieldOne.trailingAnchor.constraint(equalTo: labelOne.leadingAnchor, constant:-6),
            
            textFieldTwo.topAnchor.constraint(equalTo: labelAndTextFieldView2.topAnchor),
            textFieldTwo.leadingAnchor.constraint(equalTo: labelAndTextFieldView2.leadingAnchor),
            textFieldTwo.bottomAnchor.constraint(equalTo: labelAndTextFieldView2.bottomAnchor),
            textFieldTwo.trailingAnchor.constraint(equalTo: labelTwo.leadingAnchor, constant:-6),
            
            textFieldThree.topAnchor.constraint(equalTo: labelAndTextFieldView3.topAnchor),
            textFieldThree.leadingAnchor.constraint(equalTo: labelAndTextFieldView3.leadingAnchor),
            textFieldThree.bottomAnchor.constraint(equalTo: labelAndTextFieldView3.bottomAnchor),
            textFieldThree.trailingAnchor.constraint(equalTo: labelThree.leadingAnchor, constant:-6),
            
            //Constraints StackView
            
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            //Constraints Views
//            labelAndTextFieldView1.topAnchor.constraint(equalTo: stackView.topAnchor),
//            labelAndTextFieldView1.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
//            labelAndTextFieldView1.trailingAnchor.constraint(equalTo: stackView.trailingAnchor)
            
        ])
        //Parameters StackView
        stackView.spacing = 1
        for i in 0...2 {
            stackView.addSubview(arrayViews[i])
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
