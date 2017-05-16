//
//  DetailViewController.swift
//  IntroduceSwift3
//
//  Created by Moises on 5/16/17.
//  Copyright © 2017 Moises. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var navDetail: UINavigationBar!
    var dragonB = DragonBallZ();
    
    @IBOutlet weak var imageDragonBall: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navDetail.topItem?.title = dragonB.getName()
        imageDragonBall.image = UIImage(named: dragonB.getImage())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func backPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
