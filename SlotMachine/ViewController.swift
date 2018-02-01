// Project Name: Slot Machine
// Developed By: Yashkumar Sompura - 300967186
//               Kshitij Suthar -
// Description: Advance iOS Programming Assignment 1
// Version: 0.0.1
import UIKit

class ViewController: UIViewController {

    var jackpotValue = 5000
    var cashValue = 200
    
    var ace = 0
    var king = 0
    var queen = 0
    var jack = 0
    var seven = 0
    var eight = 0
    var nine = 0
    var ten = 0
    var aceResult = [1,5,9,13]
    var jackResult = [2,6,10,14]
    var queenResult = [3,7,11,15]
    var kingResult = [4,8,12,16]
    var sevenResult = [17,21,25,29]
    var eightResult = [18,22,26,30]
    var nineResult = [19,23,27,31]
    var tenResult = [20,24,28,32]
    
    
    @IBOutlet weak var quitButton: UIButton!
    @IBOutlet weak var jackpotLabel: UILabel!
    @IBOutlet weak var cashLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var firstCard: UIImageView!
    @IBOutlet weak var secondCard: UIImageView!
    @IBOutlet weak var thirdCard: UIImageView!
    
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
        
        ace = 0
        king = 0
        queen = 0
        jack = 0
        
    }
    
    @IBAction func spinButtonAction(_ sender: UIButton) {
        
        
        var firstRandomNumber : Int
        var secondRandomNumber : Int
        var thirdRandomNumber : Int
        
        var fileRes : String
        
        firstRandomNumber = Int(arc4random_uniform(16) + 1)
        fileRes = String(firstRandomNumber)
        self.firstCard.image = UIImage(named: fileRes)
        
        secondRandomNumber = Int(arc4random_uniform(16) + 1)
        fileRes = String(secondRandomNumber)
        self.secondCard.image = UIImage(named: fileRes)
        
        thirdRandomNumber = Int(arc4random_uniform(16) + 1)
        fileRes = String(thirdRandomNumber)
        self.thirdCard.image = UIImage(named: fileRes)
        
        if aceResult.contains(firstRandomNumber)    {
            ace += 1
        }
        if aceResult.contains(secondRandomNumber)   {
            ace += 1
        }
        if aceResult.contains(thirdRandomNumber)   {
            ace += 1
        }
        if jackResult.contains(firstRandomNumber)  {
            jack += 1
        }
        if jackResult.contains(secondRandomNumber)   {
            jack += 1
        }
        if jackResult.contains(thirdRandomNumber)   {
            jack += 1
        }
        if queenResult.contains(firstRandomNumber)  {
            queen += 1
        }
        if queenResult.contains(secondRandomNumber)   {
            queen += 1
        }
        if queenResult.contains(thirdRandomNumber)   {
            queen += 1
        }
        if kingResult.contains(firstRandomNumber)  {
            king += 1
        }
        if kingResult.contains(secondRandomNumber)   {
            king += 1
        }
        if kingResult.contains(thirdRandomNumber)   {
            king += 1
        }
        
        
        if ace == 3 {
            cashValue += 50
            cashLabel.text = String(cashValue)
        }
        else if jack == 3   {
            cashValue += 20
            cashLabel.text = String(cashValue)
        }
        else if queen == 3   {
            cashValue += 30
            cashLabel.text = String(cashValue)
        }
        else if king == 3   {
            cashValue += 40
            cashLabel.text = String(cashValue)
        }
        else if ace == 2    {
            cashValue += 20
            cashLabel.text = String(cashValue)
        }
        else if jack == 2   {
            cashValue += 5
            cashLabel.text = String(cashValue)
        }
        else if queen == 2   {
            cashValue += 10
            cashLabel.text = String(cashValue)
        }
        else if king == 2   {
            cashValue += 15
            cashLabel.text = String(cashValue)
        }
        else    {
            cashValue -= 10
            cashLabel.text = String(cashValue)
        }
        print(ace)
        print(jack)
        print(queen)
        print(king)
        ace = 0
        jack = 0
        queen = 0
        king = 0
        
    }
    
    
    
}

