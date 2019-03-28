//
//  ViewController.swift
//  Alien imageView 02
//
//  Created by D7703_23 on 2019. 3. 28..
//  Copyright © 2019년 D7703_23. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var alienImageViewer: UIImageView!
    @IBOutlet weak var countLabel: UILabel!
    
    var count = 1 , cc = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        alienImageViewer.image = UIImage(named: "frame1.png")
        countLabel.text = "frame\(count).png"
    }

    @IBAction func Buttonpressd(_ sender: Any) {
        
        alienImageViewer.image = UIImage(named: "frame\(count).png")
        countLabel.text = "frame\(count).png"
        if(count == 1) {
            cc = 0
        } else if count == 5 {
            cc = 1
        }
        if(cc == 0) {
            count += 1
        } else if cc == 1 {
            count -= 1
        }
    }
}

