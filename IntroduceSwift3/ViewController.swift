//
//  ViewController.swift
//  IntroduceSwift3
//
//  Created by Moises on 4/19/17.
//  Copyright © 2017 Moises. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numA: UITextField!
    @IBOutlet weak var numB: UITextField!
    @IBOutlet weak var result: UITextField!
    
    @IBOutlet weak var operatorText: UILabel!
    @IBOutlet weak var operatorSegment: UISegmentedControl!
    
    @IBOutlet weak var nameCharacter: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func operateWIthSegmentController(_ sender: Any) {
        if(verifyNumbers()){
            switch operatorSegment.selectedSegmentIndex {
            case 0:
                let res = getNumbers().numA + getNumbers().numB
                result.text = String(res)
                operatorText.text = "+"
            case 1:
                let res = getNumbers().numA - getNumbers().numB
                result.text = String(res)
                operatorText.text = "-"
            case 2:
                let res = getNumbers().numA * getNumbers().numB
                result.text = String(res)
                operatorText.text = "*"
            default:
                let res = getNumbers().numA / getNumbers().numB
                result.text = String(res)
                operatorText.text = "/"
            }
        }else{
            operatorSegment.selectedSegmentIndex = -1
            createAlert(title: "Error", message: "Missing number")
        }
        
    }
    
    func getNumbers() -> (numA: Double, numB: Double) {
        return (Double(numA.text!)!, Double(numB.text!)!)
    }
    
    func verifyNumbers() -> Bool {
        return (numA.text != "" && numB.text != "") == true
    }
    
    func createAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func showList(_ sender: Any) {
        if(nameCharacter.text != ""){
            performSegue(withIdentifier: "segue", sender: self)
        }else{
            createAlert(title: "Error", message: "Missing name character")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondViewController = segue.destination as! SecondViewController
        secondViewController.charactersDragonBallZ.append(nameCharacter.text!)
        
    }
}

