//
//  ViewController.swift
//  TriangleCheat
//
//  Created by Kevin Scardina on 11/20/18.
//  Copyright © 2018 Kevin Scardina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // create a view
        let triangleView = UIView(frame: CGRect(x: view.bounds.width/2,
                                                y: view.bounds.height/2,
                                                width: 20, height: 20))
        triangleView.layer.backgroundColor = UIColor.red.cgColor
        // rotate the view 45
        triangleView.transform = triangleView.transform.rotated(by: (45.0 / 180.0) * CGFloat.pi)
        view.addSubview(triangleView)
        // cover with another view to make a triangle
        let coverView = UIView(frame: CGRect(x: triangleView.frame.origin.x,
                                             y: triangleView.frame.origin.y + (triangleView.frame.width/2),
                                             width: triangleView.frame.width,
                                             height: triangleView.frame.height/2))
        coverView.backgroundColor = view.backgroundColor
        view.addSubview(coverView)
    }


}

