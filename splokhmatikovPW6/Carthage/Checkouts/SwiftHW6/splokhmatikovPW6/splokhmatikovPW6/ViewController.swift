//
//  ViewController.swift
//  splokhmatikovPW6
//
//  Created by Сергей Лохматиков on 19.12.2021.
//

import UIKit
import MyLogger1
import MyLogger2
import MyLogger3
//import MyLogger4

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func generateButton(title: String, masterView: UIView, const: Double, function: String){
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(title, for: .normal)
        button.backgroundColor = .clear
        button.setTitleColor(.black, for: .normal)
        masterView.addSubview(button)
        button.pinCenter(to: view.centerXAnchor)
        button.pinTop(to: view.topAnchor, const)
        button.addTarget(self, action: Selector(function), for: .touchUpInside)
    }
    
    
    private func setup(){
        view.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        generateButton(title: "Log (framework)", masterView: view, const: 100, function: "logFramework")
        generateButton(title: "Log (swift package)", masterView: view, const: 200, function: "logSwift")
        generateButton(title: "Log (pod)", masterView: view, const: 300, function: "logPod")
        generateButton(title: "Log (carthage)", masterView: view, const: 400, function: "logCarthage")
        
    }
    
    @objc
    func logFramework(){
        MyLogger1.log("What is better - ")
    }
    
    @objc
    func logSwift(){
        MyLogger2.log("to be born good")
    }
    
    @objc
    func logPod(){
        MyLogger3.log("or to overcome your evil nature")
    }
    
    @objc
    func logCarthage(){
        print("through great effort?")
    }
    
}

