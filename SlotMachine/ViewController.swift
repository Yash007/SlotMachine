// Project Name: Slot Machine
// Developed By: Yashkumar Sompura - 300967186
//               Kshitij Suthar -
// Description: Advance iOS Programming Assignment 1
// Version: 0.0.1
import UIKit

class ViewController: UIViewController {

    var jackpotValue = 5700
    var cashValue = 100
    
    @IBOutlet weak var quitButton: UIButton!
    @IBOutlet weak var jackpotLabel: UILabel!
    @IBOutlet weak var cashLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        
        jackpotLabel.text = String(jackpotValue)
        cashLabel.text = String(cashValue)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func quitButtonAction(_ sender: UIButton) {
        exit(0);
    }
    
    
    @IBAction func resetButtonAction(_ sender: UIButton) {
        jackpotValue = 5000
        cashValue = 200
        jackpotLabel.text = String(jackpotValue)
        cashLabel.text = String(cashValue)
    }
    
    
}

