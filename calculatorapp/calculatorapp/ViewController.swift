//
//  ViewController.swift
//  calculatorapp
//
//  Created by Raha Ghassemi on 10/1/15.
//  Copyright © 2015 Apress. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var myPicker: UIPickerView!
    
    
    var total:Int = 0
    var mode:Int = 0
    var valueString:String! = ""
    var lastButtonWasMode:Bool = false
    var edgeCase:Bool = false
    
    
    
   
    
    var language = [("en-US", "American English", "🇺🇸"),
                    ("ar-SA", "العربية", "🇸🇦"),
                    ("zh-CN", "漢語/汉语", "🇨🇳"),
                    ("zh-HK", "漢語/汉语", "🇭🇰"),
                    ("zh-TW", "漢語/汉语", " "),
                    ("cs-CZ", "český", "🇨🇿"),
                    ("da-DK", "Dansk", "🇩🇰"),
                    ("nl-BE", "Nederlandse", "🇧🇪"),
                    ("nl-NL", "Nederlands", "🇳🇱"),
                    ("en-AU", "Aussie", "🇦🇺"),
                    ("en-GB", "Queen's English", "🇬🇧"),
                    ("en-IE", "Irish English", "🇮🇪"),
                    ("en-ZA", "South African English", "🇿🇦"),
                    ("fi-FI", "Finnish", "🇫🇮"),
                    ("fr-CA", "Français du Canada", "🇨🇦"),
                    ("fr-FR", "Français", "🇫🇷"),
                    ("de-DE", "Deutsche", "🇩🇪"),
                    ("el-GR", "ελληνική", "🇬🇷"),
                    ("he-IL", "עברית", "🇮🇱"),
                    ("hi-IN", "हिन्दी", "🇮🇳"),
                    ("hu-HU", "Hungarian", "🇭🇺"),
                    ("id-ID", "Bahasa Indonesia", "🇮🇩"),
                    ("it-IT", "Italiano", "🇮🇹"),
                    ("ja-JP", "日本語", "🇯🇵"),
                    ("ko-KR", "한국어", "🇰🇷"),
                    ("no-NO", "Norsk", "🇳🇴"),
                    ("pl-PL", "Polski", "🇵🇱"),
                    ("pt-BR", "Brazilian Portuguese", "🇧🇷"),
                    ("pt-PT", "Portuguese", "🇵🇹"),
                    ("ro-RO", "Română", "🇷🇴"),
                    ("ru-RU", "русский", "🇷🇺"),
                    ("sk-SK", "Slovenčina", "🇸🇰"),
                    ("es-ES", "Español", "🇪🇸"),
                    ("es-MX", "Español de México", "🇲🇽"),
                    ("sv-SE", "Svenska", "🇸🇪"),
                    ("th-TH", "ภาษาไท", "🇹🇭"),
                    ("tr-TR", "Türkçe", "🇹🇷")]
  
    
    let mySpeachSynth = AVSpeechSynthesizer()

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var zero: UIButton!
    
    @IBOutlet weak var one: UIButton!
    
    @IBOutlet weak var two: UIButton!
    
    @IBOutlet weak var three: UIButton!
    
    @IBOutlet weak var four: UIButton!
    
    @IBOutlet weak var five: UIButton!
    
    @IBOutlet weak var six: UIButton!
    
    @IBOutlet weak var seven: UIButton!
    
    @IBOutlet weak var eight: UIButton!
    
    @IBOutlet weak var nine: UIButton!
    
    @IBOutlet weak var plus: UIButton!
    
    @IBOutlet weak var minus: UIButton!
    
    @IBOutlet weak var multiply: UIButton!
    
    @IBOutlet weak var equal: UIButton!
    
    @IBOutlet weak var clear: UIButton!
    
    @IBOutlet weak var divide: UIButton!
    
    
   var currentLang = ("en-US", "American English", "🇺🇸")
    
    //MARK- Picker functions
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return language.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let myString = "\(language[row].2) \(language[row].1)"
        return myString
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        currentLang = language[row]
        speakThisString(language[row].1)
    }
    
    
    func pickerView(pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let titleData = language[row].1
        let myTitle = NSAttributedString(string: titleData, attributes: [NSFontAttributeName:UIFont(name: "Georgia", size: 25.0)!,NSForegroundColorAttributeName:UIColor.whiteColor()])
        return myTitle
        
        
        
    }

    
    
    
    var audioPlayer:AVAudioPlayer!
   
   
 
    
  //MARK: the settings that load when the iphone first opens the app
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            try! audioPlayer = AVAudioPlayer(contentsOfURL: NSURL (fileURLWithPath: NSBundle.mainBundle().pathForResource("tay", ofType: "mp3")!), fileTypeHint:nil)
        }
        audioPlayer.play()
        label.text = "Welcome to NYC! 🌇"
    
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "park1.png")!)
        label.textColor = UIColor.blackColor()
        zero.backgroundColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 0.65)
        zero.titleLabel?.textColor = UIColor.blackColor()
        self.zero.layer.cornerRadius = 5
        one.backgroundColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 0.65)
        one.titleLabel?.textColor = UIColor.blackColor()
        self.one.layer.cornerRadius = 5
        two.backgroundColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 0.65)
        two.titleLabel?.textColor = UIColor.blackColor()
        self.two.layer.cornerRadius = 5
        three.backgroundColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 0.65)
        three.titleLabel?.textColor = UIColor.blackColor()
        self.three.layer.cornerRadius = 5
        four.backgroundColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 0.65)
        four.titleLabel?.textColor = UIColor.blackColor()
        self.four.layer.cornerRadius = 5
        five.backgroundColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 0.65)
        five.titleLabel?.textColor = UIColor.blackColor()
        self.five.layer.cornerRadius = 5
        six.backgroundColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 0.65)
        six.titleLabel?.textColor = UIColor.blackColor()
        self.six.layer.cornerRadius = 5
        seven.backgroundColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 0.65)
        seven.titleLabel?.textColor = UIColor.blackColor()
        self.seven.layer.cornerRadius = 5
        eight.backgroundColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 0.65)
        eight.titleLabel?.textColor = UIColor.blackColor()
        self.eight.layer.cornerRadius = 5
        nine.backgroundColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 0.65)
        nine.titleLabel?.textColor = UIColor.blackColor()
        self.nine.layer.cornerRadius = 5
        plus.backgroundColor = UIColor(red: 0.78, green: 0.85, blue: 0.2, alpha: 1)
        plus.titleLabel?.textColor = UIColor.blackColor()
        self.plus.layer.cornerRadius = 5
        minus.backgroundColor = UIColor(red: 0.78, green: 0.85, blue: 0.2, alpha: 1)
        minus.titleLabel?.textColor = UIColor.blackColor()
        self.minus.layer.cornerRadius = 5
        multiply.backgroundColor = UIColor(red: 0.78, green: 0.85, blue: 0.2, alpha: 1)
        multiply.titleLabel?.textColor = UIColor.blackColor()
        self.multiply.layer.cornerRadius = 5
        equal.backgroundColor = UIColor(red: 0.78, green: 0.85, blue: 0.2, alpha: 1)
        equal.titleLabel?.textColor = UIColor.blackColor()
        self.equal.layer.cornerRadius = 5
        divide.backgroundColor = UIColor(red: 0.78, green: 0.85, blue: 0.2, alpha: 1)
        divide.titleLabel?.textColor = UIColor.blackColor()
        self.divide.layer.cornerRadius = 5
        clear.backgroundColor = UIColor(red: 0.2, green: 0.9, blue: 0.7, alpha: 1)
        clear.titleLabel?.textColor = UIColor.blackColor()
        self.clear.layer.cornerRadius = 5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   

    //MARK: segmented control changing UI elements
    
    
    @IBAction func toggleControls(sender: UISegmentedControl) {
        
        if(sender.selectedSegmentIndex == 0) {
            label.text = "🌇"

            self.view.backgroundColor = UIColor(patternImage: UIImage(named: "park1.png")!)
            label.textColor = UIColor.blackColor()
            self.zero.layer.borderColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 1).CGColor
            zero.backgroundColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 0.5)
            zero.titleLabel?.textColor = UIColor.blackColor()
            self.one.layer.borderColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 1).CGColor
            one.backgroundColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 0.65)
            one.titleLabel?.textColor = UIColor.blackColor()
            self.two.layer.borderColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 1).CGColor
            two.backgroundColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 0.5)
            two.titleLabel?.textColor = UIColor.blackColor()
            self.three.layer.borderColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 1).CGColor
            three.backgroundColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 0.65)
            three.titleLabel?.textColor = UIColor.blackColor()
            self.four.layer.borderColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 1).CGColor
            four.backgroundColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 0.5)
            four.titleLabel?.textColor = UIColor.blackColor()
            self.five.layer.borderColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 1).CGColor
            five.backgroundColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 0.65)
            five.titleLabel?.textColor = UIColor.blackColor()
            self.six.layer.borderColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 1).CGColor
            six.backgroundColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 0.5)
            six.titleLabel?.textColor = UIColor.blackColor()
            self.seven.layer.borderColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 1).CGColor
            seven.backgroundColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 0.65)
            seven.titleLabel?.textColor = UIColor.blackColor()
            self.eight.layer.borderColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 1).CGColor
            eight.backgroundColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 0.65)
            eight.titleLabel?.textColor = UIColor.blackColor()
            self.nine.layer.borderColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 1).CGColor
            nine.backgroundColor = UIColor(red: 0.3, green: 0.9, blue: 0.5, alpha: 0.65)
            nine.titleLabel?.textColor = UIColor.blackColor()
            self.plus.layer.borderColor = UIColor(red: 0.78, green: 0.85, blue: 0.2, alpha: 1).CGColor
            plus.backgroundColor = UIColor(red: 0.78, green: 0.85, blue: 0.2, alpha: 1)
            plus.titleLabel?.textColor = UIColor.blackColor()
            self.minus.layer.borderColor = UIColor(red: 0.78, green: 0.85, blue: 0.2, alpha: 1).CGColor
            minus.backgroundColor = UIColor(red: 0.78, green: 0.85, blue: 0.2, alpha: 1)
            minus.titleLabel?.textColor = UIColor.blackColor()
            self.multiply.layer.borderColor = UIColor(red: 0.78, green: 0.85, blue: 0.2, alpha: 1).CGColor
            multiply.backgroundColor = UIColor(red: 0.78, green: 0.85, blue: 0.2, alpha: 1)
            multiply.titleLabel?.textColor = UIColor.blackColor()
            self.equal.layer.borderColor = UIColor(red: 0.78, green: 0.85, blue: 0.2, alpha: 1).CGColor
            equal.backgroundColor = UIColor(red: 0.78, green: 0.85, blue: 0.2, alpha: 1)
            equal.titleLabel?.textColor = UIColor.blackColor()
            self.divide.layer.borderColor = UIColor(red: 0.78, green: 0.85, blue: 0.2, alpha: 1).CGColor
            divide.backgroundColor = UIColor(red: 0.78, green: 0.85, blue: 0.2, alpha: 1)
            divide.titleLabel?.textColor = UIColor.blackColor()
            self.clear.layer.borderColor = UIColor(red: 0.2, green: 0.9, blue: 0.7, alpha: 1).CGColor
            clear.backgroundColor = UIColor(red: 0.2, green: 0.9, blue: 0.7, alpha: 1)
            clear.titleLabel?.textColor = UIColor.blackColor()
        }
        if(sender.selectedSegmentIndex == 1) {
            label.text = "🌃"
            
            self.view.backgroundColor = UIColor(patternImage: UIImage(named: "fidi.png")!)
            label.textColor = UIColor.whiteColor()
            zero.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.65)
//            zero.titleLabel?.textColor = UIColor.whiteColor()
            self.zero.layer.cornerRadius = 5
            self.zero.layer.borderWidth = 2
            self.zero.layer.borderColor = UIColor.whiteColor().CGColor
            one.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.65)
//            one.titleLabel?.textColor = UIColor.whiteColor()
            self.one.layer.cornerRadius = 5
            self.one.layer.borderWidth = 2
            self.one.layer.borderColor = UIColor.whiteColor().CGColor
            two.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.65)
//            two.titleLabel?.textColor = UIColor.whiteColor()
            self.two.layer.cornerRadius = 5
            self.two.layer.borderWidth = 2
            self.two.layer.borderColor = UIColor.whiteColor().CGColor
            three.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.65)
//            three.titleLabel?.textColor = UIColor.whiteColor()
            self.three.layer.cornerRadius = 5
            self.three.layer.borderWidth = 2
            self.three.layer.borderColor = UIColor.whiteColor().CGColor
            four.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.65)
//            four.titleLabel?.textColor = UIColor.whiteColor()
            self.four.layer.cornerRadius = 5
            self.four.layer.borderWidth = 2
            self.four.layer.borderColor = UIColor.whiteColor().CGColor
            five.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.65)
//            five.titleLabel?.textColor = UIColor.whiteColor()
            self.five.layer.cornerRadius = 5
            self.five.layer.borderWidth = 2
            self.five.layer.borderColor = UIColor.whiteColor().CGColor
            six.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.65)
//            six.titleLabel?.textColor = UIColor.whiteColor()
            self.six.layer.cornerRadius = 5
            self.six.layer.borderWidth = 2
            self.six.layer.borderColor = UIColor.whiteColor().CGColor
            seven.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.65)
//            seven.titleLabel?.textColor = UIColor.whiteColor()
            self.seven.layer.cornerRadius = 5
            self.seven.layer.borderWidth = 2
            self.seven.layer.borderColor = UIColor.whiteColor().CGColor
            eight.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.65)
//            eight.titleLabel?.textColor = UIColor.whiteColor()
            self.eight.layer.cornerRadius = 5
            self.eight.layer.borderWidth = 2
            self.eight.layer.borderColor = UIColor.whiteColor().CGColor
            nine.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.65)
//            nine.titleLabel?.textColor = UIColor.whiteColor()
            self.nine.layer.cornerRadius = 5
            self.nine.layer.borderWidth = 2
            self.nine.layer.borderColor = UIColor.whiteColor().CGColor
            plus.backgroundColor = UIColor.grayColor()
//            plus.titleLabel?.textColor = UIColor.whiteColor()
            self.plus.layer.cornerRadius = 5
            self.plus.layer.borderWidth = 2
            self.plus.layer.borderColor = UIColor.whiteColor().CGColor
            minus.backgroundColor = UIColor.grayColor()
//            minus.titleLabel?.textColor = UIColor.whiteColor()
            self.minus.layer.cornerRadius = 5
            self.minus.layer.borderWidth = 2
            self.minus.layer.borderColor = UIColor.whiteColor().CGColor
            multiply.backgroundColor = UIColor.grayColor()
//            multiply.titleLabel?.textColor = UIColor.whiteColor()
            self.multiply.layer.cornerRadius = 5
            self.multiply.layer.borderWidth = 2
            self.multiply.layer.borderColor = UIColor.whiteColor().CGColor
            equal.backgroundColor = UIColor.grayColor()
//            equal.titleLabel?.textColor = UIColor.whiteColor()
            self.equal.layer.cornerRadius = 5
            self.equal.layer.borderWidth = 2
            self.equal.layer.borderColor = UIColor.whiteColor().CGColor
            clear.backgroundColor = UIColor.whiteColor()
//            clear.titleLabel?.textColor = UIColor.whiteColor()
            self.clear.layer.cornerRadius = 5
            self.clear.layer.borderWidth = 2
            self.clear.layer.borderColor = UIColor.whiteColor().CGColor
            divide.backgroundColor = UIColor.grayColor()
//            divide.titleLabel?.textColor = UIColor.whiteColor()
            self.divide.layer.cornerRadius = 5
            self.divide.layer.borderWidth = 2
            self.divide.layer.borderColor = UIColor.whiteColor().CGColor
        }
        
    }
    
    //MARK: Speak this string
    
    func speakThisString (myString: String){
        mySpeachSynth.stopSpeakingAtBoundary(AVSpeechBoundary.Immediate)
        let myUtterance = AVSpeechUtterance(string: myString)
        myUtterance.voice = AVSpeechSynthesisVoice(language: currentLang.0)
        mySpeachSynth.speakUtterance(myUtterance)
        
       
        
    }
    
    //MARK: addition operator

    @IBAction func tappedPlus(sender: UIButton) {
        self.setModes(1)
        speakThisString("Plus")
    }
    
    //MARK: subtraction operator
    
    @IBAction func tappedMinus(sender: UIButton) {
        self.setModes(-1)
        speakThisString("Minus")
    }
    
    //MARK: divided button
    
    
    @IBAction func tappedDivide(sender: UIButton) {
        self.setModes(3)
        speakThisString("Divided by")
    }
    
    //MARK: equals button
    
    @IBAction func tappedEquals(sender: UIButton) {
        
        
        if (mode == 0)
        {
            return
        }
        let iNum:Int = Int(valueString)!
        if (mode == 1)
        {
            total += iNum
        }
        if (mode == -1)
        {
            total -= iNum
        }
        if (mode == 2)
        {
            total *= iNum
        }
        if (mode == 3)
        {
            total /= iNum
        }
        
        valueString = "\(total)"
        let formatter:NSNumberFormatter = NSNumberFormatter()
        formatter.numberStyle = NSNumberFormatterStyle.DecimalStyle
        let n:NSNumber = formatter.numberFromString(valueString)!
        
        label.text = formatter.stringFromNumber(n)
        mode = 0
        
        
        speakThisString("equals \(total)")
        
        edgeCase = true

    }
    
    //MARK: multiplication operator
    
    @IBAction func tappedMultiply(sender: UIButton) {
        speakThisString("times")
        self.setModes(2)
    }
    
    //MARK:clear button
    
    @IBAction func tappedClear(sender: UIButton) {
        speakThisString("clear")
        total = 0
        mode = 0
        valueString = ""
        lastButtonWasMode = false
        label.text = "0"
    }
    
    //MARK: press numbers
    
    @IBAction func tappedNumber(sender: UIButton) {
        
        //Mark: Edge case if statement
        if (edgeCase) {
            edgeCase = false
            valueString = ""
        }
        
        
        let str:String! = sender.titleLabel!.text
        let num:Int! = Int(str)
        if (num == 0 && total == 0)
        {
            return
        }
        if (lastButtonWasMode)
        {
            lastButtonWasMode = false
            valueString = ""
        }
      
        valueString = valueString.stringByAppendingString(str)
        
        
        let formatter:NSNumberFormatter = NSNumberFormatter()
        formatter.numberStyle = NSNumberFormatterStyle.DecimalStyle
        let n:NSNumber = formatter.numberFromString(valueString)!
        
        label.text = formatter.stringFromNumber(n)
        
        
        if(total == 0)
        {
        total = Int(valueString)!
        }
        speakThisString(valueString)
        
        
        
        
    }
    
    //MARK: - set mode for addition, subtration, and multiplication
    
    func setModes(m:Int)
    {
        if (total == 0)
        {
            return
        }
        mode = m
        lastButtonWasMode = true
        total = Int(valueString)!
        
    }


}





