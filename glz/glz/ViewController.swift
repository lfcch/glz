//
//  ViewController.swift
//  glz
//
//  Created by John D. Gaffney on 6/28/17.
//  Copyright © 2017 gffny.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!

    var images = [UIImageView]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var contentWidth: CGFloat = 0.0

        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image);
            images.append(imageView)
            
            let newX: CGFloat = view.frame.midX + view.frame.size.width * CGFloat(x)
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: 0, y: view.frame.size.height / 2, width: 150, height: 150)
        }
        print("Count: \(images.count)")
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }
}

