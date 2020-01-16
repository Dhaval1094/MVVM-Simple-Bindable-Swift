//
//  ViewController.swift
//  MVVM-KVO-Swift
//
//  Created by Dhaval Trivedi on 16/01/20.
//  Copyright © 2020 Dhaval Trivedi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet weak var lblIndex: UILabel!
    @IBOutlet weak var lblColor: UILabel!
    
    //MARK: - Variables
    var colorViewModel = ColorViewModel()
    
    //MARK: - ViewController Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.setupViewModel()
        //Set default red color
        colorViewModel.redColorButtonClicked()
    }
    
    //Add observer for bindable properties
    func setupViewModel() {
        colorViewModel.color.bind { (color) in
            self.view.backgroundColor = color
        }
        colorViewModel.colorName.bind { (name) in
            self.lblColor.text = name
        }
        colorViewModel.colorButtonIndex.bind { (index) in
            self.lblIndex.text = String(index)
        }
    }

    //MARK: - Button Actions
    
    @IBAction func blueClicked(_ sender: Any) {
        colorViewModel.blueColorButtonClicked()
    }
    
    @IBAction func greenClicked(_ sender: Any) {
        colorViewModel.greenColorButtonClicked()
    }
    
    @IBAction func redClicked(_ sender: Any) {
        colorViewModel.redColorButtonClicked()
    }
    
    @IBAction func blackClicked(_ sender: Any) {
        colorViewModel.blackColorButtonClicked()
    }
}

