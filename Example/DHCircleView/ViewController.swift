//
//  ViewController.swift
//  DHCircleView
//
//  Created by DolphinQuan on 07/24/2017.
//  Copyright (c) 2017 DolphinQuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageArray:[UIImage] = []
    var circleView:DHCircleView!
    
    override func viewDidLoad() {
        for i in 0...4 {
            imageArray.append(UIImage(named: "\(i)")!)
        }
        
        let frame = CGRect(x: 0, y: 0, width: screenWidth, height: 250)
        circleView = DHCircleView(frame, images: imageArray,time: 3)
        circleView.delegate = self
        
        self.view.addSubview(circleView)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        circleView.imageArray = [imageArray.first!,imageArray.last!]
    }
}



extension ViewController:DHCircleViewDelegate{
    func circleViewDidSelected(circleView: UIView, index: Int) {
        print(index)
    }
}
