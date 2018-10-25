//
//  ViewController.swift
//  Tarot
//
//  Created by Vinh Ngo on 25/10/18.
//  Copyright © 2018 Vinh Ngo. All rights reserved.
//

import UIKit

class OracleController: UIViewController {
    var model1:model = model()

    @IBAction func response(_ sender: Any) {
        cardDesc.text = model1.respond()
        imageCard.image = UIImage(named: model1.currentCardImageName)
    }
    @IBOutlet weak var imageCard: UIImageView!
    @IBOutlet weak var cardDesc: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        cardDesc.text = "Welcome to Summoner's Rift"
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

