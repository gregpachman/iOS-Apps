//
//  ViewController.swift
//  WarCardGame
//
//  Created by User on 1/26/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightCardView: UIImageView!
    @IBOutlet weak var leftCardView: UIImageView!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var fightButton: UIButton!
    
    @IBOutlet weak var leftCardScoreboard: UITextField!
    
    @IBOutlet weak var playAgain: UIButton!
    
    @IBOutlet weak var rightCardScoreboard: UITextField!
    
    var leftScoreTotal = 0
    var rightScoreTotal = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func fightButtonTap(sender: AnyObject) {
        
        var leftRandomCard = arc4random_uniform(14) + 2
        var leftCardResult: String = String(format: "%i", leftRandomCard)
        
        
        var rightRandomCard = arc4random_uniform(14) + 2
        var rightCardResult: String = String(format: "%i", rightRandomCard)
        
        self.leftCardView.image = UIImage(named: leftCardResult)
        self.rightCardView.image = UIImage(named: rightCardResult)
        

    
    if leftRandomCard > rightRandomCard {
    
            leftScoreTotal += 1
            self.leftCardScoreboard.text = String(leftScoreTotal)
        
    }
        else if leftRandomCard == rightRandomCard{
            
        
        }else {
            rightScoreTotal += 1
            self.rightCardScoreboard.text = String(rightScoreTotal)
}
        
        if rightScoreTotal > 9 || leftScoreTotal > 9 {
            
            fightButton.hidden = true
            playAgain.hidden = false
        }
}
    @IBAction func playAgainButtonTap(sender: AnyObject) {
        
        playAgain.hidden = true
        leftCardScoreboard.text = "0"
        rightCardScoreboard.text = "0"
        leftScoreTotal = 0
        rightScoreTotal = 0
        fightButton.hidden = false
    }
}