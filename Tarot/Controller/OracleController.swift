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
        imageCard.image = UIImage(named: model1.currentCard.imageName)
//        var cardImageName: String = ""
//        var message:String = ""
//        model1.respond(cardImageName: &cardImageName, message: &message)
//        cardDesc.text = message
//        imageCard.image = UIImage(named: cardImageName)
//        let response:(cardImageName: String, cardMessage: String) = model1.respond()
//        cardDesc.text = response.cardMessage
//        imageCard.image = UIImage(named: response.cardImageName)
        
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

