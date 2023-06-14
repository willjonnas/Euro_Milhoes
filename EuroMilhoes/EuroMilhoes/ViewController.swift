//
//  ViewController.swift
//  EuroMillion
//
//  Created by MultiLab PRT on 02/03/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var n1: UILabel!
    @IBOutlet weak var n2: UILabel!
    @IBOutlet weak var n3: UILabel!
    @IBOutlet weak var n4: UILabel!
    @IBOutlet weak var n5: UILabel!
    
    @IBOutlet weak var s1: UILabel!
    @IBOutlet weak var s2: UILabel!
    

    var numberArray = [Int]()
    var starArray = [Int]()
    
    override func viewDidLoad() {
    
    super.viewDidLoad()
    gerar(nil)
    }
    
    @IBAction func gerar(_ sender: UIButton?) {
        var numbers = Set<Int>()
        var stars = Set<Int>()
        
        
        while numbers.count < 5 {
            let randomNumber = Int.random(in: 1...50)
            numbers.insert(randomNumber)
        }
        while stars.count < 2 {
            let randomStar = Int.random(in: 1...12)
            stars.insert(randomStar)
            
        }
            
        numberArray = Array(numbers)
        n1.text = String(numberArray[0])
        n2.text = String(numberArray[1])
        n3.text = String(numberArray[2])
        n4.text = String(numberArray[3])
        n5.text = String(numberArray[4])
        
        starArray = Array(stars)
        s1.text = String(starArray[0])
        s2.text = String(starArray[1])
        }
    
}
