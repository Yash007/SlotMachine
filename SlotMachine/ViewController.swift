// Project Name: Slot Machine
// Developed By: Yashkumar Sompura - 300967186
//               Kshitij Suthar - 300971838
// Description: Advance iOS Programming Assignment 1
// Version: 0.0.1
import UIKit
import AVFoundation

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    var jackpotValue = 5000
    var cashValue = 200
    
    var slotsound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "spin", ofType: "wav")!)
    var audio = AVAudioPlayer()
    
    
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
     let images = [#imageLiteral(resourceName: "1"),#imageLiteral(resourceName: "2"),#imageLiteral(resourceName: "3"),#imageLiteral(resourceName: "4"),#imageLiteral(resourceName: "6"),#imageLiteral(resourceName: "7"),#imageLiteral(resourceName: "8"),#imageLiteral(resourceName: "9"),#imageLiteral(resourceName: "10"),#imageLiteral(resourceName: "11"),#imageLiteral(resourceName: "12"),#imageLiteral(resourceName: "13"),#imageLiteral(resourceName: "14"),#imageLiteral(resourceName: "15"),#imageLiteral(resourceName: "16"),#imageLiteral(resourceName: "17"),#imageLiteral(resourceName: "18"),#imageLiteral(resourceName: "19"),#imageLiteral(resourceName: "20"),#imageLiteral(resourceName: "21"),#imageLiteral(resourceName: "22"),#imageLiteral(resourceName: "23"),#imageLiteral(resourceName: "24"),#imageLiteral(resourceName: "25"),#imageLiteral(resourceName: "26"),#imageLiteral(resourceName: "27"),#imageLiteral(resourceName: "28"),#imageLiteral(resourceName: "29"),#imageLiteral(resourceName: "30"),#imageLiteral(resourceName: "31"),#imageLiteral(resourceName: "32")]
    
    @IBOutlet weak var quitButton: UIButton!
    @IBOutlet weak var jackpotLabel: UILabel!
    @IBOutlet weak var cashLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var firstCard: UIImageView!
    @IBOutlet weak var secondCard: UIImageView!
    @IBOutlet weak var thirdCard: UIImageView!
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var slotPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        
        jackpotLabel.text = String(jackpotValue)
        cashLabel.text = String(cashValue)
        self.slotPicker.delegate = self
        self.slotPicker.dataSource = self
        
        do{
            audio = try AVAudioPlayer(contentsOf: slotsound as URL)
            audio.prepareToPlay()
        }catch{
            
        }
        
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(onTimerEvent(timer:)), userInfo: nil, repeats: true)
    }
    
    @objc func onTimerEvent(timer: Timer) {
        self.resultImage.isHidden = !self.resultImage.isHidden
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
        var res : Bool
        
        audio.play()
        
        
      
        firstRandomNumber = Int(arc4random_uniform(32) + 1)
        print ("first Random Number" + String(firstRandomNumber))
        
        secondRandomNumber = Int(arc4random_uniform(32) + 1)
        print ("second Rand Num " + String(secondRandomNumber))
        
        thirdRandomNumber = Int(arc4random_uniform(32) + 1)
        print ("third" + String(thirdRandomNumber))
        rollslot(firstNumber:firstRandomNumber, secondNumber: secondRandomNumber, thirdNumber: thirdRandomNumber)
        
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
        if sevenResult.contains(firstRandomNumber)    {
            seven += 1
        }
        if sevenResult.contains(secondRandomNumber)   {
            seven += 1
        }
        if sevenResult.contains(thirdRandomNumber)   {
            seven += 1
        }
        if eightResult.contains(firstRandomNumber)  {
            eight += 1
        }
        if eightResult.contains(secondRandomNumber)   {
            eight += 1
        }
        if eightResult.contains(thirdRandomNumber)   {
            eight += 1
        }
        if nineResult.contains(firstRandomNumber)  {
            nine += 1
        }
        if nineResult.contains(secondRandomNumber)   {
            nine += 1
        }
        if nineResult.contains(thirdRandomNumber)   {
            nine += 1
        }
        if tenResult.contains(firstRandomNumber)  {
            ten += 1
        }
        if tenResult.contains(secondRandomNumber)   {
            ten += 1
        }
        if tenResult.contains(thirdRandomNumber)   {
            ten += 1
        }
        
        
        if ace == 3 {
            cashValue += 50
            cashLabel.text = String(cashValue)
            res = true
        }
        else if jack == 3   {
            cashValue += 20
            cashLabel.text = String(cashValue)
            res = true
        }
        else if queen == 3   {
            cashValue += 30
            cashLabel.text = String(cashValue)
            res = true
        }
        else if king == 3   {
            cashValue += 40
            cashLabel.text = String(cashValue)
            res = true
        }
        else if seven == 3 {
            cashValue += 15
            cashLabel.text = String(cashValue)
            res = true
        }
        else if eight == 3   {
            cashValue += 15
            cashLabel.text = String(cashValue)
            res = true
        }
        else if nine == 3   {
            cashValue += 15
            cashLabel.text = String(cashValue)
            res = true
        }
        else if ten == 3   {
            cashValue += 15
            cashLabel.text = String(cashValue)
            res = true
        }
        else if ace == 2    {
            cashValue += 20
            cashLabel.text = String(cashValue)
            res = true
        }
        else if jack == 2   {
            cashValue += 5
            cashLabel.text = String(cashValue)
            res = true
        }
        else if queen == 2   {
            cashValue += 10
            cashLabel.text = String(cashValue)
            res = true
        }
        else if king == 2   {
            cashValue += 15
            cashLabel.text = String(cashValue)
            res = true
        }
        else if seven == 2   {
            cashValue += 10
            cashLabel.text = String(cashValue)
            res = true
        }
        else if ten == 2   {
            cashValue += 10
            cashLabel.text = String(cashValue)
            res = true
        }
        else if eight == 2   {
            cashValue += 10
            cashLabel.text = String(cashValue)
            res = true
        }
        else if nine == 2   {
            cashValue += 10
            cashLabel.text = String(cashValue)
            res = true
        }
        else   {
            cashValue -= 10
            cashLabel.text = String(cashValue)
            jackpotValue += 10
            jackpotLabel.text = String(jackpotValue)
            res = false
        }
        
        if res == true  {
            self.resultImage.image = UIImage(named: "win")
        }
        else    {
             self.resultImage.image = UIImage(named: "lose")
        }
        print(ace)
        print(jack)
        print(queen)
        print(king)
        print(seven)
        print(eight)
        print(nine)
        print(ten)
        ace = 0
        jack = 0
        queen = 0
        king = 0
        seven = 0
        eight = 0
        nine = 0
        ten = 0
        
    }
    
    func rollslot(firstNumber : Int,secondNumber:Int, thirdNumber:Int){ // roll pickerview
        var delay : TimeInterval = 0
        
        print ("first " + String(firstNumber))
        let first =  firstNumber - 2
        let second =  secondNumber - 2
        let third =  thirdNumber - 2
        // iterate over each component, set random img
        for i in 0..<slotPicker.numberOfComponents{
            DispatchQueue.main.asyncAfter(deadline: .now() + delay, execute: {
                if (i == 0) {
                    self.slotPicker.selectRow(first, inComponent: i, animated: true)
                }
                else if (i == 1){
                    self.slotPicker.selectRow(second, inComponent: i, animated: true)
                }
                else {
                    self.slotPicker.selectRow(third, inComponent: i, animated: true)
                }
            })
            delay += 0.2
        }
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return images.count
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let index = row % images.count
        return UIImageView(image:images[index])
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return images[component].size.height + 1
    }
}

