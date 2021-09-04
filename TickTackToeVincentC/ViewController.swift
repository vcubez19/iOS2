//
//  ViewController.swift
//  TickTackToeVincentC
//
//  Created by Vincent Cubit on 8/29/21.
//


import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var PlayerLabel: UILabel!
    
    
    var currentPlayer: String?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.PlayerLabel.isHidden = true
        
    }


    @IBAction func ButtonAction(_ sender: AnyObject) {
        
        if let value = self.currentPlayer {
            sender.setImage(UIImage(named: value), for: .normal)
                    
        }
        
        else {
            self.showAlert()
        }

    }
    
    
    @IBAction func playingXTapped(_ sender: Any) {
        
        self.currentPlayer = "xmark.png"
        self.PlayerLabel.isHidden = false
        self.PlayerLabel.text = "X is playing"
        
    }
    
    
    @IBAction func playingOTapped(_ sender: Any) {
        
        self.currentPlayer = "circle.png"
        self.PlayerLabel.isHidden = false
        self.PlayerLabel.text = "O is playing"
        
    }
    
    
    func showAlert() {
        
        let alert = UIAlertController(title: "Whoops", message: "Please select a player", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))

        self.present(alert, animated: true)
        
    }
    
    
}
