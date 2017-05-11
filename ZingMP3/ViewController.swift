//
//  ViewController.swift
//  ZingMP3
//
//  Created by Minh Tuan on 5/11/17.
//  Copyright © 2017 Minh Tuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var hinhanh: UIImageView!
    @IBOutlet weak var chu: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
      hinhanh!.alpha = 0
        chu!.alpha = 0
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 6, animations: {
            self.hinhanh!.alpha = 1
        },completion: {
            (keththuc) in
            UIView.animate(withDuration: 3, animations: {
                self.chu!.center = CGPoint(x: self.hinhanh!.center.x, y: 82)
                self.chu!.alpha = 1
            })
        })
    }


}

