//
//  ViewController.swift
//  StarterSelector
//
//  Created by Jordan Yee on 10/22/20.
//

import UIKit

class ViewController: UIViewController{
    

    @IBOutlet weak var StarterSelector: UILabel!
    @IBOutlet weak var Pokemon: UIImageView!

    var previous = 1
    var genCount = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    @IBAction func shuffleButton(_ sender: Any) {
        var starter = Int.random(in: 1...3)
        while starter == previous{
            starter = Int.random(in: 1...3)
        }
        previous = starter
        Pokemon.image = UIImage(named: "\(starter + genCount)")
    
    
    }
    @IBAction func Gen1(_ sender: Any) {
        Pokemon.image = UIImage(named: "1")
        genCount = 0
        
    }

    @IBAction func Gen2(_ sender: Any) {
        Pokemon.image = UIImage(named: "4")
        genCount = 3
    }
    
    @IBAction func Gen3(_ sender: Any) {
        Pokemon.image = UIImage(named: "7")
        genCount = 6
    }
}

