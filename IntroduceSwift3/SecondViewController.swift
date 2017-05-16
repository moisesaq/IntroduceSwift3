//
//  SecondViewController.swift
//  IntroduceSwift3
//
//  Created by Moises on 5/13/17.
//  Copyright © 2017 Moises. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var charactersDragonBallZ = ["Goku", "Vegeta", "Trunks", "Gohan", "Piccolo"];
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func backPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return (charactersDragonBallZ.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = charactersDragonBallZ[indexPath.row]
        return(cell)
    }
}
