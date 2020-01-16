//
//  ColorViewModel.swift
//  MVVM-KVO-Swift
//
//  Created by Dhaval Trivedi on 16/01/20.
//  Copyright © 2020 Dhaval Trivedi. All rights reserved.
//

import UIKit

class ColorViewModel: NSObject {
    
    //MARK: Input to View Model
    var blackColorButtonClicked: () -> () = { }
    var redColorButtonClicked: () -> () = { }
    var greenColorButtonClicked: () -> () = { }
    var blueColorButtonClicked: () -> () = { }
    
    //MARK: - Generic + Bindable Properties
    var color: Dynamic<UIColor>
    var colorName: Dynamic<String>
    var colorButtonIndex: Dynamic<Int>
    
    override init() {
        color = Dynamic(.red)
        colorName = Dynamic("Red")
        colorButtonIndex = Dynamic(1)
        super.init()
        self.addActionObservers()
    }
    
    //MARK: - Add Action Observers
    func addActionObservers() {
        //Black
        blackColorButtonClicked = {
            self.setColorViewModel(colorModel: self.getColorModelFor(index: 0))
        }
        //Red
        redColorButtonClicked = {
            self.setColorViewModel(colorModel: self.getColorModelFor(index: 1))
        }
        //Green
        greenColorButtonClicked = {
            self.setColorViewModel(colorModel: self.getColorModelFor(index: 2))
        }
        //Blue
        blueColorButtonClicked = {
            self.setColorViewModel(colorModel: self.getColorModelFor(index: 3))
        }
    }
    
    //Update viewController
    func setColorViewModel(colorModel: ColorModel) {
        //Updete dynamic value
        //It will trigger listner added in viewController's setupViewModel()
        self.color.value = colorModel.color
        self.colorName.value = colorModel.name
        self.colorButtonIndex.value = colorModel.index
    }
    
    //Get colorModel based on index
    //index 0 - Black
    //index 1 - Red
    //index 2 - Green
    //index 3 - Blue
    func getColorModelFor(index: Int) -> ColorModel {
        switch index {
        case 0:
            return ColorModel(color: .black, index: 0, name: "Black")
        case 1:
            return ColorModel(color: .red, index: 1, name: "Red")
        case 2:
            return ColorModel(color: .green, index: 2, name: "Green")
        case 3:
            return ColorModel(color: .blue, index: 3, name: "Blue")
        default:
            break
        }
        return ColorModel(color: UIColor.white, index: 100, name: "")
    }
    
}
