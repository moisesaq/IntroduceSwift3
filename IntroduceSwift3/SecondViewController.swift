//
//  SecondViewController.swift
//  IntroduceSwift3
//
//  Created by Moises on 5/13/17.
//  Copyright © 2017 Moises. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var charactersDragonBallZ = DragonBallZ.getListDefault()
    //["Goku", "Vegeta", "Trunks", "Gohan", "Piccolo"];
    
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
        return charactersDragonBallZ.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = charactersDragonBallZ[indexPath.row].getName()
        return(cell)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index = tableView.indexPathForSelectedRow!.row
        performSegue(withIdentifier: "segueDetail", sender: index)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailViewController{
            
            if let index = sender as? Int{
                destination.dragonB = charactersDragonBallZ[index]
            }
        }
    }
}
