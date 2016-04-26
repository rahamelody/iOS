//
//  AppDelegate.swift
//  TinderLike
//
//  Created by Stefan Lage on 10/01/15.
//  Copyright (c) 2015 Stefan Lage. All rights reserved.
//

import UIKit
import AVFoundation
import QuartzCore
//import FBSDKCoreKit
//import FBSDKLoginKit
//import AWSCore
//import AWSMobileHubHelper
//import AWSS3


@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource {
    
    var window: UIWindow?
    var nav: UINavigationController?
    var controller: SLPagingViewSwift!
    var dataSource: [String]!
    let data = Data()
    let matchName = UILabel()
//    let facebookLogin = FBSDKLoginButton()
//    let facebookLoginManager = FBSDKLoginManager()
    let ctr2 = UIViewController()
    let ctr1 = UIViewController()
    let ctr3 = UIViewController()
    let storyboard = UIStoryboard()
    let touchSwipe = UIEvent()
    var isSwiping = Bool()
    let man1 = UIButton()
    let man2 = UIButton()
    let man3 = UIButton()
    let man4 = UIButton()
    let man5 = UIButton()
    let raha1 = UIButton()
    let raha2 = UIButton()
    let raha3 = UIButton()
    let raha4 = UIButton()
    let raha5 = UIButton()
    let interestInfo = UIImageView()
    let hisNameAndAge = UILabel()
    let hisDesc = UILabel()
    let hisJob = UILabel()
    let foodPrefTitle = UILabel()
    let hisFoodPrefs1 = UILabel()
    let hisFoodPrefs2 = UILabel()
    let hisFoodPrefs3 = UILabel()
    let hisFoodPrefs4 = UILabel()
    let myNameAndAge = UILabel()
    let myFoodPrefs1 = UILabel()
    let myFoodPrefs2 = UILabel()
    let myFoodPrefs3 = UILabel()
    let myFoodPrefs4 = UILabel()
    let myGenderPrefs = UILabel()
    let malegender = UIButton()
    let femalegender = UIButton()
    let whocaresgender = UIButton()
    let myDistPref = UILabel()
    let distance = UISlider()
    let distanceNum = UILabel()
    let myJob = UILabel()
    let myDesc = UITextField()
    let imInterested = UIButton()
    let messages = UITableView()
    let downtown = UILabel()
    let takem = UILabel()
    let notintoit = UILabel()
    let spinit = UILabel()
    let arrow = UIImageView()
    let swipeView = UIButton()
    let myName = "RAHA"
    let myAge = "23"
    let mySchool = "PARSONS SCHOOL OF DESIGN"
    var imageList:[String] = ["man1", "man2", "man3", "man4", "man5"]
    let maxImages = 4
    var imageIndex: NSInteger = 0
    var names = ["ANDREW", "BEN", "JIMMY", "JORDAN", "CARL"]
    var ages = ["25", "26", "21", "28", "23"]
    var desc = ["I'm a 6ft basketball player and I love fishing", "I love to cook and watch Netflix!", "Parsons grad working in web dev", "Let's get pizza and go to a museum", "I've traveled to 30 countries"]
    var job = ["GOOGLE", "JPMORGAN & CHASE", "SQUARESPACE", "AMAZON", "FACEBOOK"]
    var foods = ["CHINESE", "MEXICAN", "JAPANESE", "THAI", "PERSIAN"]
    var distances = ["0.5 miles away", "10.0 miles away", "5.0 miles away", "3.0 miles away", "70.0 miles away"]
    var distanceLabel = UILabel()
    let tapRecognizer = UITapGestureRecognizer()
    var tapRecognizer2 = UIPanGestureRecognizer()
    var Swipe = UISwipeGestureRecognizer()
    let me = UIImageView()
    let him = UIImageView()
    let thingsjust = UILabel()
    let little = UILabel()
    let spicier = UILabel()
    let youandhim = UILabel()
    let directions1 = UILabel()
    let directions2 = UILabel()
    let directions3 = UILabel()
    let sendMessage = UIButton()
    let keepSwiping = UIButton()
    let interestInfo2 = UIImageView()
    let spiceOfTheDay = UILabel()
    let spiceyPerson = UIButton()
    let matchDay = UILabel()
    let yourSpiceRack = UILabel()
    let topVsRecent = UISegmentedControl()
    let spiceNameAndAge = UILabel()
    let spiceJob = UILabel()
    let spiceDesc = UILabel()
    let addFoods = UIButton()
    let openTableOptions = UITableView()
    let donePickingFood = UIButton()
    let ageRange = UISlider()
    let ageRange2 = UISlider()
    let ageRangeLabel = UILabel()
    let ageRangeTitle = UILabel()
    let yellow = UIColor(red: 225/255, green: 153.0/255, blue: 11.0/255, alpha: 1.0)
    let purple = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
    var cuisines = ["Afghan", "African", "Afternoon Tea", "American", "Argentinean", "Asian", "Austrailian", "Austrian", "Bar/Lounge/Bottle Service", "Barbecue", "Basque", "Beer Garden", "Belgian", "Bistro", "Brazilian", "Brazilian Steakhouse", "Breakfast", "Brewery", "British", "Burgers", "Cafe", "Cajun", "Californian", "Canadian", "Caribbean", "Chinese", "Chinese (Sichuan)", "Colombian", "Comfort Food", "Contemporary American", "Contemporary Asian", "Contemporary European", "Contemporary French", "Contemporary French/American", "Contemporary German", "Contemporary Indian", "Contemporary Italian", "Contemporary Korean", "Contemporary Mexican", "Contemporary Southern", "Continental", "Creole", "Creole/Cajun/Southern", "Creperie", "Croatian", "Cuban", "Dessert", "Dim Sum", "Dining Bar", "Eastern European", "Ecuadorain", "Egyptian", "English", "Ethiopian", "European", "Filipino", "Fine cuts", "Fish", "Fondue", "French", "French/Japanese", "French American", "Fusion/Eclectic", "Gastro Pub", "German", "Global, International", "Greek", "Grill", "Halal", "Hawaiian", "Hibachi", "Home cooking", "Indian", "International", "Irish", "Israeli", "Italian", "Jamaican", "Japanese", "Japanese Specialty", "Kaiseki", "Korean", "Kosher", "Latin/Spanish", "Latin American", "Lebanese", "Lounge", "Low Country", "Malaysian", "Meat", "Mediterranean", "Mexican", "Mexican/Southwestern", "Middle Eastern", "Modern Australian", "Modern European", "Modern Tuscan", "Moroccan", "New Zealand", "Nordic", "Northwest", "Organic", "Oyster Bar", "Pakistani", "Pan-Asian", "Persian", "Peruvian", "Pizzeria", "Polynesian", "Portuguese", "Prime Rib", "Provencal", "Puerto Rican", "Regional Mexican", "Russian", "Scandinavian", "Scottish", "Seafood", "Sicilian", "Soul food", "South American", "South Indian", "Southeast Asian", "Southern", "Southwest", "Spanish", "Steak", "Steakhouse", "Sushi", "Swiss", "Syrian", "Tapas/Small Plates", "Tex-Mex", "Thai", "Thai French", "Traditional Mexican", "Turkish", "Ukrainian", "Uruguayan", "Vegan", "Vegetarian", "Vegetarian/Vegan", "Vietnamese", "Wild Game", "Wine Bar", "Yakitori"]
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        //        func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent) {
        //            /* Called when a touch begins */
        //            let touch = touches.first
        //            let point = touch!.locationInView(ctr2.view)
        //            print("hi")
        //            if point.x >= 0 && point.y >= 180 && point.y <= 330  {
        //                controller.updateUserInteractionOnNavigation(false)
        //            }
        //
        //
        //        }
        func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool {
            return true
        }
        
        
        swipeView.userInteractionEnabled = true
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        let yellow = UIColor(red: 225/255, green: 153.0/255, blue: 11.0/255, alpha: 1.0)
        let purple = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
        hisNameAndAge.frame = CGRectMake(0, 0, 150, 21)
        hisNameAndAge.center = CGPointMake(190, 70)
        hisNameAndAge.textAlignment = NSTextAlignment.Center
        hisNameAndAge.text = "\(names[0]), \(ages[0])"
        hisNameAndAge.font = UIFont(name: "Futura", size: 20)
        hisNameAndAge.textColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
        hisJob.frame = CGRectMake(0, 0, 200, 25)
        hisJob.center = CGPointMake(190, 100)
        hisJob.textAlignment = NSTextAlignment.Center
        hisJob.text = "\(job[0])"
        hisJob.font = UIFont(name: "Avenir-Heavy", size: 14)
        hisJob.textColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
        hisDesc.frame = CGRectMake(0, 0, 300, 500)
        hisDesc.center = CGPointMake(190, 125)
        hisDesc.textAlignment = NSTextAlignment.Center
        hisDesc.text = "\(desc[0])"
        hisDesc.font = UIFont(name: "Avenir", size: 14)
        hisDesc.textColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
        
        
        messages.delegate = self
        messages.dataSource = self
        messages.frame = CGRectMake(0, 170, 375, 500)
        messages.registerClass(TableViewCell.self, forCellReuseIdentifier: "cell2")
        messages.rowHeight = 70
        
        
        
        spiceOfTheDay.frame = CGRectMake(20, 0, 200, 50)
        spiceOfTheDay.text = "DAILY OLD SPICE:"
        spiceOfTheDay.font = UIFont(name: "Futura", size: 13)
        spiceOfTheDay.textColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
        spiceyPerson.frame = CGRectMake(20, 40, 100, 100)
        spiceyPerson.layer.cornerRadius = spiceyPerson.frame.size.width/2
        spiceyPerson.clipsToBounds = true
        spiceyPerson.layer.borderWidth = 2.0
        spiceyPerson.layer.borderColor = UIColor.whiteColor().CGColor
        spiceyPerson.setImage(UIImage(named: "spiceguy"), forState: .Normal)
        matchDay.frame = CGRectMake(140, 0, 300, 50)
        matchDay.text = "MATCHED 10 DAYS AGO"
        matchDay.font = UIFont(name: "Avenir-Light", size: 13)
        matchDay.textColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
        yourSpiceRack.frame = CGRectMake(20, 110, 300, 100)
        yourSpiceRack.text = "YOUR SPICE RACK"
        yourSpiceRack.font = UIFont(name: "Futura", size: 13)
        yourSpiceRack.textColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
        topVsRecent.frame = CGRectMake(0, 0, 300, 100)
        topVsRecent.center = CGPointMake(20, 135)
        spiceNameAndAge.frame = CGRectMake(130, 48, 200, 50)
        spiceNameAndAge.text = "\(names[0]), \(ages[0])"
        spiceNameAndAge.font = UIFont(name: "Futura", size: 20)
        spiceNameAndAge.textColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
        spiceJob.frame = CGRectMake(130, 70, 200, 50)
        spiceJob.text = "\(job[0])"
        spiceJob.font = UIFont(name: "Avenir-Heavy", size: 14)
        spiceJob.textColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
        spiceDesc.frame = CGRectMake(130, 88, 210, 50)
        spiceDesc.text = "\(desc[0]) more..."
        spiceDesc.font = UIFont(name: "Avenir", size: 14)
        spiceDesc.textColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
        
        notintoit.frame = CGRectMake(0, 0, 400, 500)
        notintoit.center = CGPointMake(190, 100)
        notintoit.textAlignment = NSTextAlignment.Center
        notintoit.font = UIFont(name: "Avenir-Medium", size: 18)
        notintoit.textColor = UIColor.whiteColor()
        
        spinit.frame = CGRectMake(0, 0, 400, 500)
        spinit.center = CGPointMake(190, 130)
        spinit.textAlignment = NSTextAlignment.Center
        spinit.font = UIFont(name: "Avenir-Medium", size: 18)
        spinit.textColor = UIColor.whiteColor()
        
        interestInfo.frame = CGRectMake(0, 0, 700, 700)
        interestInfo2.frame = CGRectMake(0, 0, 700, 700)
        interestInfo.image = UIImage(named: "interaction")
        downtown.frame = CGRectMake(0, 0, 400, 500)
        downtown.center = CGPointMake(190, 400)
        downtown.textAlignment = NSTextAlignment.Center
        downtown.font = UIFont(name: "Futura", size: 25)
        downtown.textColor = UIColor(red: 225/255, green: 153.0/255, blue: 11.0/255, alpha: 1.0)
        takem.frame = CGRectMake(0, 0, 400, 500)
        takem.center = CGPointMake(190, 430)
        takem.textAlignment = NSTextAlignment.Center
        takem.font = UIFont(name: "Futura", size: 25)
        takem.textColor = UIColor(red: 225/255, green: 153.0/255, blue: 11.0/255, alpha: 1.0)
        
        arrow.frame = CGRectMake(0, 0, 51, 49)
        arrow.center = CGPointMake(190, 480)
        
        addFoods.frame = CGRectMake(25, 350, 230, 30)
        addFoods.setTitle("12 food preferences selected", forState: .Normal)
        addFoods.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        addFoods.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 15)
        addFoods.backgroundColor = yellow
        addFoods.addTarget(self, action: #selector(AppDelegate.switchToViewController(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        donePickingFood.frame = CGRectMake(0, 560, 375, 44)
        donePickingFood.backgroundColor = UIColor(red: 225/255, green: 153.0/255, blue: 11.0/255, alpha: 1.0)
        donePickingFood.setTitle("D O N E", forState: UIControlState.Normal)
        donePickingFood.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        donePickingFood.titleLabel?.font = (UIFont(name: "Futura", size: 20))
        donePickingFood.addTarget(self, action:  #selector(AppDelegate.donePressed(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        
        foodPrefTitle.frame = CGRectMake(0, 0, 400, 400)
        foodPrefTitle.center = CGPointMake(190, 420)
        foodPrefTitle.textAlignment = NSTextAlignment.Center
        foodPrefTitle.text = "MUTUAL FOOD PREFERENCES"
        foodPrefTitle.font = UIFont(name: "Futura", size: 15)
        foodPrefTitle.textColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
        hisFoodPrefs1.frame = CGRectMake(0, 0, 400, 50)
        hisFoodPrefs1.center = CGPointMake(190, 450)
        hisFoodPrefs1.textAlignment = NSTextAlignment.Center
        hisFoodPrefs1.text = "\(foods[0])"
        hisFoodPrefs1.font = UIFont(name: "Avenir-Light", size: 13)
        hisFoodPrefs1.textColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
        hisFoodPrefs2.frame = CGRectMake(0, 0, 400, 50)
        hisFoodPrefs2.center = CGPointMake(190, 470)
        hisFoodPrefs2.textAlignment = NSTextAlignment.Center
        hisFoodPrefs2.text = "\(foods[1])"
        hisFoodPrefs2.font = UIFont(name: "Avenir-Light", size: 13)
        hisFoodPrefs2.textColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
        hisFoodPrefs3.frame = CGRectMake(0, 0, 400, 50)
        hisFoodPrefs3.center = CGPointMake(190, 490)
        hisFoodPrefs3.textAlignment = NSTextAlignment.Center
        hisFoodPrefs3.text = "\(foods[2])"
        hisFoodPrefs3.font = UIFont(name: "Avenir-Light", size: 13)
        hisFoodPrefs3.textColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
        hisFoodPrefs4.frame = CGRectMake(0, 0, 400, 50)
        hisFoodPrefs4.center = CGPointMake(190, 510)
        hisFoodPrefs4.textAlignment = NSTextAlignment.Center
        hisFoodPrefs4.text = "\(foods[3])"
        hisFoodPrefs4.font = UIFont(name: "Avenir-Light", size: 13)
        hisFoodPrefs4.textColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
        
        myNameAndAge.frame = CGRectMake(0, 0, 150, 370)
        myNameAndAge.center = CGPointMake(70, 275)
        myNameAndAge.textAlignment = NSTextAlignment.Center
        myNameAndAge.text = "\(myName), \(myAge)"
        myNameAndAge.font = UIFont(name: "Futura", size: 20)
        myNameAndAge.textColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
        
        myJob.frame = CGRectMake(0, 0, 370, 200)
        myJob.center = CGPointMake(128, 300)
        myJob.textAlignment = NSTextAlignment.Center
        myJob.text = mySchool
        myJob.font = UIFont(name: "Avenir-Heavy", size: 14)
        myJob.textColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
        
        myDesc.frame = CGRectMake(0, 0, 250, 25)
        myDesc.center = CGPointMake(148, 328)
        myDesc.text = "Add your one-liner here"
        myDesc.font = UIFont(name: "Avenir-Heavy", size: 15)
        myDesc.textColor = yellow
        
        distanceLabel.frame = CGRectMake(0, 0, 400, 50)
        distanceLabel.center = CGPointMake(190, 380)
        distanceLabel.textAlignment = NSTextAlignment.Center
        distanceLabel.text = "\(distances[0])"
        distanceLabel.font = UIFont(name: "Futura", size: 13)
        distanceLabel.textColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
        
        myDistPref.frame = CGRectMake(0, 0, 400, 50)
        myDistPref.center = CGPointMake(100, 410)
        myDistPref.textAlignment = NSTextAlignment.Center
        myDistPref.text = "MAXIMUM DISTANCE"
        myDistPref.font = UIFont(name: "Futura", size: 14)
        myDistPref.textColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
        
        
        distance.frame = CGRectMake(0, 0, 250, 100)
        distance.center = CGPointMake(150, 440)
        distance.minimumValue = 0
        distance.maximumValue = 100
        distance.continuous = true
        distance.value = 50
        distance.tintColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
        distance.addTarget(self, action: #selector(AppDelegate.sliderValueDidChange(_:)), forControlEvents: .ValueChanged)
        
        distanceNum.frame = CGRectMake(0, 0, 400, 450)
        distanceNum.center = CGPointMake(300, 440)
        distanceNum.textAlignment = NSTextAlignment.Center
        distanceNum.text = "50 mi."
        distanceNum.font = UIFont(name: "Avenir-Light", size: 14)
        distanceNum.textColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
        
        ageRangeTitle.frame = CGRectMake(0, 0, 400, 50)
        ageRangeTitle.center = CGPointMake(70, 470)
        ageRangeTitle.textAlignment = NSTextAlignment.Center
        ageRangeTitle.text = "AGE RANGE"
        ageRangeTitle.font = UIFont(name: "Futura", size: 14)
        ageRangeTitle.textColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
        
        ageRange.frame = CGRectMake(0, 0, 250, 100)
        ageRange.center = CGPointMake(150, 500)
        ageRange.minimumValue = 18
        ageRange.maximumValue = 55
        ageRange.continuous = true
        ageRange.value = 18
        ageRange.tintColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
        ageRange.addTarget(self, action: #selector(AppDelegate.agesliderValueDidChange(_:)), forControlEvents: .ValueChanged)
        ageRange2.frame = CGRectMake(0, 0, 224, 100)
        ageRange2.center = CGPointMake(165, 500)
        ageRange2.minimumValue = 18
        ageRange2.maximumValue = 55
        ageRange2.continuous = true
        ageRange2.value = 100
        ageRange2.tintColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
        ageRange2.addTarget(self, action: #selector(AppDelegate.agesliderValueDidChange(_:)), forControlEvents: .ValueChanged)
        
        ageRangeLabel.frame = CGRectMake(0, 0, 400, 450)
        ageRangeLabel.center = CGPointMake(320, 500)
        ageRangeLabel.textAlignment = NSTextAlignment.Center
        ageRangeLabel.text = "18 - 100 y.o."
        ageRangeLabel.font = UIFont(name: "Avenir-Light", size: 15)
        ageRangeLabel.textColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
        
        myGenderPrefs.frame = CGRectMake(0, 0, 400, 400)
        myGenderPrefs.center = CGPointMake(120, 540)
        myGenderPrefs.textAlignment = NSTextAlignment.Center
        myGenderPrefs.text = "MY GENDER PREFERENCES"
        myGenderPrefs.font = UIFont(name: "Futura", size: 14)
        myGenderPrefs.textColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
        
        malegender.frame = CGRectMake(0, 0, 80, 30)
        malegender.center = CGPointMake(70, 575)
        malegender.setTitle("Male", forState: .Normal)
        malegender.titleLabel?.font = UIFont(name: "Avenir", size: 15)
        malegender.setTitleColor(purple, forState: .Normal)
        malegender.addTarget(self, action: #selector(AppDelegate.maleselected(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        malegender.layer.borderWidth = 1.0
        malegender.layer.borderColor = purple.CGColor
        femalegender.frame = CGRectMake(0, 0, 80, 30)
        femalegender.center = CGPointMake(180, 575)
        femalegender.setTitle("Female", forState: .Normal)
        femalegender.titleLabel?.font = UIFont(name: "Avenir", size: 15)
        femalegender.setTitleColor(purple, forState: .Normal)
        femalegender.addTarget(self, action: #selector(AppDelegate.femaleselected(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        femalegender.layer.borderWidth = 1.0
        femalegender.layer.borderColor = purple.CGColor
        whocaresgender.frame = CGRectMake(0, 0, 100, 30)
        whocaresgender.center = CGPointMake(300, 575)
        whocaresgender.setTitle("Don't Care", forState: .Normal)
        whocaresgender.titleLabel?.font = UIFont(name: "Avenir", size: 15)
        whocaresgender.setTitleColor(purple, forState: .Normal)
        whocaresgender.addTarget(self, action: #selector(AppDelegate.whocaresselected(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        whocaresgender.layer.borderWidth = 1.0
        whocaresgender.layer.borderColor = purple.CGColor
        
        
        imInterested.frame = CGRectMake(0, 560, 375, 44)
        imInterested.backgroundColor = UIColor(red: 225/255, green: 153.0/255, blue: 11.0/255, alpha: 1.0)
        imInterested.setTitle("I  W A N T  A  T A S T E", forState: UIControlState.Normal)
        imInterested.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        imInterested.titleLabel?.font = (UIFont(name: "Futura", size: 20))
        imInterested.addTarget(self, action:  #selector(AppDelegate.interestedpressed(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        
        
        
        raha1.frame = CGRectMake(90, 20, 200, 200)
        raha1.layer.cornerRadius = raha1.frame.size.width/2
        raha1.clipsToBounds = true
        raha1.layer.borderWidth = 3.0
        raha1.layer.borderColor = UIColor.whiteColor().CGColor
        raha1.setImage(UIImage(named: "raha1"), forState: .Normal)
        raha2.frame = CGRectMake(100, 225, 30, 30)
        raha2.layer.cornerRadius = raha2.frame.size.width/2
        raha2.clipsToBounds = true
        raha2.layer.borderWidth = 3.0
        raha2.layer.borderColor = UIColor(red: 225/255, green: 153.0/255, blue: 11.0/255, alpha: 1.0).CGColor
        raha2.setImage(UIImage(named: "raha1"), forState: .Normal)
        raha2.addTarget(self, action: #selector(AppDelegate.raha2selected(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        raha3.frame = CGRectMake(150, 225, 30, 30)
        raha3.setImage(UIImage(named: "raha3"), forState: .Normal)
        raha3.layer.cornerRadius = raha3.frame.size.width/2
        raha3.clipsToBounds = true
        raha3.layer.borderWidth = 3.0
        raha3.layer.borderColor = UIColor.whiteColor().CGColor
        raha3.addTarget(self, action: #selector(AppDelegate.raha3selected(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        raha4.frame = CGRectMake(200, 225, 30, 30)
        raha4.layer.cornerRadius = raha4.frame.size.width/2
        raha4.clipsToBounds = true
        raha4.layer.borderWidth = 3.0
        raha4.layer.borderColor = UIColor.whiteColor().CGColor
        raha4.setImage(UIImage(named: "raha4"), forState: .Normal)
        raha4.addTarget(self, action: #selector(AppDelegate.raha4selected(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        raha5.frame = CGRectMake(250, 225, 30, 30)
        raha5.layer.cornerRadius = raha5.frame.size.width/2
        raha5.clipsToBounds = true
        raha5.layer.borderWidth = 3.0
        raha5.layer.borderColor = UIColor.whiteColor().CGColor
        raha5.setImage(UIImage(named: "raha5"), forState: .Normal)
        raha5.addTarget(self, action: #selector(AppDelegate.raha5selected(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        
        man1.frame = CGRectMake(5, 225, 70, 70)
        man1.layer.cornerRadius = man1.frame.size.width/2
        man1.clipsToBounds = true
        man1.layer.borderWidth = 3.0
        man1.layer.borderColor = UIColor.whiteColor().CGColor
        man1.setImage(UIImage(named: "man1"), forState: .Normal)
        man2.frame = CGRectMake(35, 200, 120, 120)
        man2.layer.cornerRadius = man2.frame.size.width/2
        man2.clipsToBounds = true
        man2.layer.borderWidth = 3.0
        man2.layer.borderColor = UIColor.whiteColor().CGColor
        man2.setImage(UIImage(named: "man2"), forState: .Normal)
        man3.frame = CGRectMake(90, 160, 200, 200)
        man3.layer.cornerRadius = man3.frame.size.width/2
        man3.clipsToBounds = true
        man3.layer.borderWidth = 3.0
        man3.layer.borderColor = UIColor.whiteColor().CGColor
        man3.setImage(UIImage(named: "man3"), forState: .Normal)
        man3.setTitle("Drag Me", forState: UIControlState.Normal)
        man3.addTarget(self, action: #selector(AppDelegate.wasDragged(_:event:)), forControlEvents: UIControlEvents.TouchDragInside)
        man3.addTarget(self, action: #selector(AppDelegate.man3unpressed(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        man3.addTarget(self, action: #selector(AppDelegate.man3pressed(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        
        man4.frame = CGRectMake(220, 200, 120, 120)
        man4.layer.cornerRadius = man4.frame.size.width/2
        man4.clipsToBounds = true
        man4.layer.borderWidth = 3.0
        man4.layer.borderColor = UIColor.whiteColor().CGColor
        man4.setImage(UIImage(named: "man4"), forState: .Normal)
        man4.layer.shadowRadius = 4.0;
        man4.layer.shadowOpacity = 0.2;
        man4.layer.shadowOffset = CGSizeMake(1, 1);
        man5.frame = CGRectMake(300, 225, 70, 70)
        man5.layer.cornerRadius = man5.frame.size.width/2
        man5.clipsToBounds = true
        man5.layer.borderWidth = 3.0
        man5.layer.borderColor = UIColor.whiteColor().CGColor
        man5.setImage(UIImage(named: "man5"), forState: .Normal)
        spring()
        
        
        self.returnUserData()
        
        
        
        Swipe = UISwipeGestureRecognizer(target: self, action: #selector(AppDelegate.swiped(_:)))
        
        Swipe.direction = UISwipeGestureRecognizerDirection.Right
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(AppDelegate.swiped(_:)))
        leftSwipe.direction = UISwipeGestureRecognizerDirection.Left
        swipeView.frame = CGRectMake(0, 180, 375, 150)
        swipeView.addGestureRecognizer(Swipe)
        swipeView.addGestureRecognizer(leftSwipe)
        
        
        
        
        
        
        
        
        sendMessage.frame = CGRectMake(90, 370, 182, 40)
        sendMessage.backgroundColor = yellow
        sendMessage.setTitle("SEND A MESSAGE", forState: UIControlState.Normal)
        sendMessage.titleLabel?.font = UIFont(name: "Futura-Medium", size: 14)
        sendMessage.titleLabel?.textColor = UIColor.whiteColor()
        sendMessage.addTarget(self, action: #selector(AppDelegate.sendmessagepressed(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        //        sendMessage.addTarget(self, action: #selector(AppDelegate.switchToMessageViewController(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        
        keepSwiping.frame = CGRectMake(90, 430, 182, 40)
        keepSwiping.layer.borderWidth = 2.0
        keepSwiping.layer.borderColor = UIColor.whiteColor().CGColor
        keepSwiping.backgroundColor = UIColor.clearColor()
        keepSwiping.setTitle("KEEP SWIPING", forState: UIControlState.Normal)
        keepSwiping.titleLabel?.font = UIFont(name: "Futura-Medium", size: 14)
        keepSwiping.titleLabel?.textColor = UIColor.whiteColor()
        keepSwiping.addTarget(self, action: #selector(AppDelegate.keepPlayingPressed(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        
        
        
        me.frame = CGRectMake(100, 175, 100, 100)
        me.layer.cornerRadius = me.frame.size.width/2
        me.clipsToBounds = true
        me.layer.borderWidth = 2.0
        me.layer.borderColor = UIColor.whiteColor().CGColor
        me.image = UIImage(named: "raha1")
        
        him.frame = CGRectMake(180, 175, 100, 100)
        him.layer.cornerRadius = me.frame.size.width/2
        him.clipsToBounds = true
        him.layer.borderWidth = 2.0
        him.layer.borderColor = UIColor.whiteColor().CGColor
        him.image = UIImage(named: "man3")
        
        thingsjust.frame = CGRectMake(0, 0, 360, 60)
        thingsjust.center = CGPointMake(190, 70)
        thingsjust.textAlignment = NSTextAlignment.Center
        thingsjust.text = "THINGS JUST GOT A"
        thingsjust.font = UIFont(name: "Futura", size: 30)
        thingsjust.textColor = UIColor.whiteColor()
        
        little.frame = CGRectMake(0, 0, 360, 60)
        little.center = CGPointMake(135, 110)
        little.textAlignment = NSTextAlignment.Center
        little.text = "LITTLE"
        little.font = UIFont(name: "Futura", size: 30)
        little.textColor = UIColor.whiteColor()
        
        spicier.frame = CGRectMake(0, 0, 450, 60)
        spicier.center = CGPointMake(240, 110)
        spicier.textAlignment = NSTextAlignment.Center
        spicier.text = "SPICIER"
        spicier.font = UIFont(name: "Futura", size: 30)
        spicier.textColor = yellow
        
        youandhim.frame = CGRectMake(0, 0, 450, 60)
        youandhim.center = CGPointMake(190, 150)
        youandhim.textAlignment = NSTextAlignment.Center
        youandhim.text = "You and ANDREW liked each other!"
        youandhim.font = UIFont(name: "Futura", size: 15)
        youandhim.textColor = UIColor.whiteColor()
        directions1.frame = CGRectMake(0, 0, 450, 60)
        directions1.center = CGPointMake(190, 300)
        directions1.textAlignment = NSTextAlignment.Center
        directions1.text = "Message him first to get treated to the 1st date!"
        directions1.font = UIFont(name: "Futura", size: 15)
        directions1.textColor = UIColor.whiteColor()
        directions2.frame = CGRectMake(0, 0, 450, 60)
        directions2.center = CGPointMake(190, 317)
        directions2.textAlignment = NSTextAlignment.Center
        directions2.text = "Remember, if someone messages you first you have"
        directions2.font = UIFont(name: "Futura", size: 15)
        directions2.textColor = UIColor.whiteColor()
        directions3.frame = CGRectMake(0, 0, 450, 60)
        directions3.center = CGPointMake(190, 335)
        directions3.textAlignment = NSTextAlignment.Center
        directions3.text = "to treat them. YAY Gender Equality!"
        directions3.font = UIFont(name: "Futura", size: 15)
        directions3.textColor = UIColor.whiteColor()
        
        
//        
//        let accessToken = FBSDKAccessToken.currentAccessToken()
//        if(accessToken == nil)
//        {
//            print("not logged in")
//            facebookLogin.frame = CGRectMake(0, 0, 100, 30)
//            facebookLogin.center = CGPointMake(60, 540)
//            facebookLogin.readPermissions = ["email", "public_profile"]
//            ctr2.view.addSubview(facebookLogin)
//        }
//        else{
//            print("logged in already")
//        }
        
        tapRecognizer.addTarget(self, action: #selector(AppDelegate.didTapView))
        ctr1.view.addGestureRecognizer(tapRecognizer)
        
        
        
        ctr1.title = "Ctr1"
        ctr1.view.backgroundColor = UIColor.whiteColor()
        
        ctr1.view.addSubview(raha1)
        ctr1.view.addSubview(raha2)
        ctr1.view.addSubview(raha3)
        ctr1.view.addSubview(raha4)
        ctr1.view.addSubview(raha5)
        ctr1.view.addSubview(myNameAndAge)
        ctr1.view.addSubview(myJob)
        ctr1.view.addSubview(myDesc)
        ctr1.view.addSubview(myDistPref)
        ctr1.view.addSubview(distance)
        ctr1.view.addSubview(distanceNum)
        ctr1.view.addSubview(myGenderPrefs)
        ctr1.view.addSubview(malegender)
        ctr1.view.addSubview(femalegender)
        ctr1.view.addSubview(whocaresgender)
        ctr1.view.addSubview(addFoods)
        ctr1.view.addSubview(ageRangeTitle)
        ctr1.view.addSubview(ageRange)
        ctr1.view.addSubview(ageRangeLabel)
        ctr1.view.addSubview(ageRange2)
        
        
        
        ctr2.title = "Ctr2"
        ctr2.view.backgroundColor = UIColor.whiteColor()
        
        
        ctr3.title = "Ctr3"
        ctr3.view.backgroundColor = UIColor.whiteColor()
        ctr3.view.addSubview(messages)
        ctr3.view.addSubview(spiceOfTheDay)
        ctr3.view.addSubview(spiceyPerson)
        ctr3.view.addSubview(matchDay)
        ctr3.view.addSubview(yourSpiceRack)
        ctr3.view.addSubview(topVsRecent)
        ctr3.view.addSubview(spiceNameAndAge)
        ctr3.view.addSubview(spiceDesc)
        ctr3.view.addSubview(spiceJob)
        
        var img1 = UIImage(named: "gear")
        img1 = img1?.imageWithRenderingMode(.AlwaysTemplate)
        var img2 = UIImage(named: "soup")
        img2 = img2?.imageWithRenderingMode(.AlwaysTemplate)
        var img3 = UIImage(named: "message")
        img3 = img3?.imageWithRenderingMode(.AlwaysTemplate)
        
        
        let items = [UIImageView(image: img1), UIImageView(image: img2), UIImageView(image: img3)]
        let controllers = [ctr1, ctr2, ctr3]
        
        
        
        
        
        
        controller = SLPagingViewSwift(items: items, controllers: controllers, showPageControl: false)
        
        controller.pagingViewMoving = ({ subviews in
            if let imageViews = subviews as? [UIImageView] {
                for imgView in imageViews {
                    var c = purple
                    let originX = Double(imgView.frame.origin.x)
                    
                    if (originX > 45 && originX < 145) {
                        c = self.gradient(originX, topX: 46, bottomX: 144, initC: yellow, goal: purple)
                    }
                    else if (originX > 145 && originX < 245) {
                        c = self.gradient(originX, topX: 146, bottomX: 244, initC: purple, goal: yellow)
                    }
                    else if(originX == 145){
                        c = yellow
                    }
                    imgView.tintColor = c
                }
            }
        })
        
        
        ctr2.view.addSubview(hisNameAndAge)
        ctr2.view.addSubview(hisDesc)
        ctr2.view.addSubview(hisJob)
        ctr2.view.addSubview(foodPrefTitle)
        ctr2.view.addSubview(hisFoodPrefs1)
        ctr2.view.addSubview(hisFoodPrefs2)
        ctr2.view.addSubview(hisFoodPrefs3)
        ctr2.view.addSubview(hisFoodPrefs4)
        ctr2.view.addSubview(man5)
        ctr2.view.addSubview(man4)
        ctr2.view.addSubview(man1)
        ctr2.view.addSubview(man2)
        ctr2.view.addSubview(swipeView)
        ctr2.view.addSubview(man3)
        ctr2.view.addSubview(imInterested)
        ctr2.view.addSubview(distanceLabel)
        
        
        self.nav = UINavigationController(rootViewController: self.controller)
        self.window?.rootViewController = self.nav
        self.window?.backgroundColor = UIColor.whiteColor()
        self.window?.makeKeyAndVisible()
        
        return true
        //
        //    return AWSMobileClient.sharedInstance.didFinishLaunching(application, withOptions: launchOptions)
        
//        return FBSDKApplicationDelegate.sharedInstance()
//            .application(application, didFinishLaunchingWithOptions: launchOptions)
        
        
    }
    
    
    
    @IBAction func addfoodselected (sender: UIButton!) {
        
        ctr1.view.addSubview(openTableOptions)
        ctr1.view.addSubview(donePickingFood)
        
    }
    
    
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Return the number of rows in the section
        return data.people.count
        //        return names.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)  -> UITableViewCell {
        
        let cellIdentifier = "cell2"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! TableViewCell
        
        let entry = data.people[indexPath.row]
        cell.matchImage.image = UIImage(named: entry.Image)
        cell.matchName.text = entry.Name
        cell.descriptionLabel.text = entry.Description
        
        
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        //        print("selected \(indexPath.row + 1).\(names[indexPath.row])")
        
        if let cell = tableView.cellForRowAtIndexPath(indexPath) as? TableViewCell {
            if cell.selected {
                
                cell.matchImage.layer.borderWidth = 0.0
                cell.matchName.textColor = purple
                cell.descriptionLabel.textColor = purple
                if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("MessageViewController") as? MessageViewController {
                    controller.presentViewController(viewController, animated: true, completion: nil)
                    viewController.matchSelected = String(indexPath.item)
                    
                }
                
                
            }
        }
        
        
    }
    
    //
    func returnUserData()
    {
        //        let graphRequest : FBSDKGraphRequest = FBSDKGraphRequest(graphPath: "me", parameters: nil)
        //        graphRequest.startWithCompletionHandler({ (connection, result, error) -> Void in
        //
        //            if ((error) != nil)
        //            {
        //                // Process error
        //                print("Error: \(error)")
        //            }
        //            else
        //            {
        //                print("fetched user: \(result)")
        //                let userName : NSString = result.valueForKey("name") as! NSString
        //                print("User Name is: \(userName)")
        //                let userEmail : NSString = result.valueForKey("email") as! NSString
        //                print("User Email is: \(userEmail)")
        //            }
        //        })
    }
    
    
    @IBAction func switchToViewController(sender: AnyObject) {
        if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("ViewController") as? TableViewController {
            controller.presentViewController(viewController, animated: true, completion: nil)
            
        }
    }
    
    @IBAction func switchToMessageViewController(sender: AnyObject) {
        if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("MessageViewController") as? MessageViewController {
            
            controller.presentViewController(viewController, animated: true, completion: nil)
            
        }
    }
    
    
    
    
    
    
    @IBAction func donePressed (sender: UIButton!) {
        
        openTableOptions.removeFromSuperview()
        donePickingFood.removeFromSuperview()
        
    }
    
    @IBAction func man3unpressed (sender: UIButton! = nil) {
        
        interestInfo.removeFromSuperview()
        downtown.removeFromSuperview()
        takem.removeFromSuperview()
        arrow.removeFromSuperview()
        notintoit.removeFromSuperview()
        spinit.removeFromSuperview()
        man3.center = CGPoint(x: 190, y: 260)
        
    }
    
    
    
    @IBAction func man3pressed (sender: UIButton!) {
        
        man3.transform = CGAffineTransformMakeScale(0.95, 0.95)
        UIView.animateWithDuration(2.0,
                                   delay: 0,
                                   usingSpringWithDamping: 0.2,
                                   initialSpringVelocity: 6.0,
                                   options: UIViewAnimationOptions.AllowUserInteraction,
                                   animations: {
                                    self.man3.transform = CGAffineTransformIdentity
            }, completion: nil)
        
        
        
        
        
    }
    
    @IBAction func sendmessagepressed (sender: UIButton) {
        swiped(Swipe)
        thingsjust.removeFromSuperview()
        him.removeFromSuperview()
        me.removeFromSuperview()
        little.removeFromSuperview()
        spicier.removeFromSuperview()
        interestInfo2.removeFromSuperview()
        directions1.removeFromSuperview()
        directions2.removeFromSuperview()
        directions3.removeFromSuperview()
        keepSwiping.removeFromSuperview()
        sendMessage.removeFromSuperview()
        
        
    }
    @IBAction func keepPlayingPressed (sender: UIButton) {
        swiped(Swipe)
        thingsjust.removeFromSuperview()
        him.removeFromSuperview()
        spicier.removeFromSuperview()
        me.removeFromSuperview()
        little.removeFromSuperview()
        interestInfo2.removeFromSuperview()
        directions1.removeFromSuperview()
        directions2.removeFromSuperview()
        directions3.removeFromSuperview()
        keepSwiping.removeFromSuperview()
        sendMessage.removeFromSuperview()
        
        
    }
    
    
    
    
    func wasDragged (buttn : UIButton, event :UIEvent)
    {
        let touch : UITouch = (event.touchesForView(buttn)?.first)! as UITouch
        let previousLocation : CGPoint = touch .previousLocationInView(buttn)
        let location : CGPoint = touch .locationInView(buttn)
        let delta_x :CGFloat = 0
        let delta_y :CGFloat = location.y - previousLocation.y
        buttn.center = CGPointMake(buttn.center.x + delta_x,
                                   buttn.center.y + delta_y);
        
        thingsjust.removeFromSuperview()
        him.removeFromSuperview()
        me.removeFromSuperview()
        little.removeFromSuperview()
        interestInfo2.removeFromSuperview()
        ctr2.view.addSubview(interestInfo)
        ctr2.view.addSubview(downtown)
        ctr2.view.addSubview(takem)
        ctr2.view.addSubview(notintoit)
        ctr2.view.addSubview(spinit)
        ctr2.view.addSubview(arrow)
        ctr2.view.addSubview(man3)
        ctr2.view.addSubview(imInterested)
        spicier.removeFromSuperview()
        youandhim.removeFromSuperview()
        directions1.removeFromSuperview()
        directions2.removeFromSuperview()
        directions3.removeFromSuperview()
        keepSwiping.removeFromSuperview()
        sendMessage.removeFromSuperview()
        
        downtown.text = "WANT A TASTE?"
        takem.text = "TAKE'EM DOWNTOWN..."
        arrow.image = UIImage(named: "arrow")
        notintoit.text = "Not into it?"
        spinit.text = "Just keep spinning the spice rack."
        if buttn.center.y + delta_y >= 540 {
            
            ctr2.view.addSubview(man3)
            interestedpressed(imInterested)
            interestInfo.removeFromSuperview()
            downtown.removeFromSuperview()
            takem.removeFromSuperview()
            notintoit.removeFromSuperview()
            spinit.removeFromSuperview()
            arrow.removeFromSuperview()
            ctr2.view.addSubview(imInterested)
            
        }
        
        
    }
    
    
    
    
    func swiped(gesture: UIGestureRecognizer) {
        
        
        
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            
            
            switch swipeGesture.direction {
                
            case UISwipeGestureRecognizerDirection.Right :
                print("User swiped right")
                
                
                let lastVal = imageList[imageList.count - 1]
                let lastNames = names[names.count - 1]
                let lastAges = ages[ages.count - 1]
                let lastJobs = job[job.count - 1]
                let lastDescs = desc[desc.count - 1]
                let lastFoods = foods[foods.count - 1]
                let lastDistances = distances[distances.count - 1]
                
                
                for i in 4.stride(to: 0, by: -1) {
                    let newVal = imageList[i-1]
                    let newNames = names[i-1]
                    let newAges = ages[i-1]
                    let newJobs = job[i-1]
                    let newDescs = desc[i-1]
                    let newFoods = foods[i-1]
                    let newDistances = distances[i-1]
                    imageList[i] = newVal
                    names[i] = newNames
                    ages[i] = newAges
                    job[i] = newJobs
                    desc[i] = newDescs
                    foods[i] = newFoods
                    distances[i] = newDistances
                    print(i, imageList[i], names[i], ages[i], job[i])
                    
                }
                
                imageList[0] = lastVal
                names[0] = lastNames
                ages[0] = lastAges
                job[0] = lastJobs
                desc[0] = lastDescs
                foods[0] = lastFoods
                distances[0] = lastDistances
                
                
                man2.setImage(UIImage(named: imageList[1]), forState: .Normal)
                spring()
                man3.setImage(UIImage(named: imageList[2]), forState: .Normal)
                man1.setImage(UIImage(named: imageList[0]), forState: .Normal)
                man4.setImage(UIImage(named: imageList[3]), forState: .Normal)
                man5.setImage(UIImage(named: imageList[4]), forState: .Normal)
                him.image = UIImage(named: imageList[2])
                youandhim.text = "You and \(names[0]) like each other!"
                hisNameAndAge.text = "\(names[0]), \(ages[0])"
                hisJob.text = "\(job[0])"
                hisDesc.text = "\(desc[0])"
                distanceLabel.text = "\(distances[0])"
                hisFoodPrefs1.text = "\(foods[0])"
                hisFoodPrefs2.text = "\(foods[1])"
                hisFoodPrefs3.text = "\(foods[2])"
                hisFoodPrefs4.text = "\(foods[3])"
                
            case UISwipeGestureRecognizerDirection.Left :
                print("User swiped Left")
                let lastVal = imageList[imageList.count - 5]
                let lastNames = names[names.count - 5]
                let lastAges = ages[ages.count - 5]
                let lastJobs = job[job.count - 5]
                let lastDescs = desc[desc.count - 5]
                let lastFoods = foods[foods.count - 5]
                let lastDistances = distances[distances.count - 5]
                
                for i in 0.stride(to: 4, by: 1) {
                    let newVal = imageList[i+1]
                    let newNames = names[i+1]
                    let newAges = ages[i+1]
                    let newJobs = job[i+1]
                    let newDescs = desc[i+1]
                    let newFoods = foods[i+1]
                    let newDistances = distances[i+1]
                    imageList[i] = newVal
                    names[i] = newNames
                    ages[i] = newAges
                    job[i] = newJobs
                    desc[i] = newDescs
                    foods[i] = newFoods
                    distances[i] = newDistances
                    print(i, imageList[i], names[i], ages[i], job[i])
                    
                }
                
                imageList[4] = lastVal
                names[4] = lastNames
                ages[4] = lastAges
                job[4] = lastJobs
                desc[4] = lastDescs
                foods[4] = lastFoods
                distances[4] = lastDistances
                
                man2.setImage(UIImage(named: imageList[1]), forState: .Normal)
                man3.setImage(UIImage(named: imageList[2]), forState: .Normal)
                man1.setImage(UIImage(named: imageList[0]), forState: .Normal)
                man4.setImage(UIImage(named: imageList[3]), forState: .Normal)
                man5.setImage(UIImage(named: imageList[4]), forState: .Normal)
                him.image = UIImage(named: imageList[2])
                youandhim.text = "You and \(names[0]) like each other!"
                hisNameAndAge.text = "\(names[0]), \(ages[0])"
                hisJob.text = "\(job[0])"
                hisDesc.text = "\(desc[0])"
                distanceLabel.text = "\(distances[0])"
                hisFoodPrefs1.text = "\(foods[0])"
                hisFoodPrefs2.text = "\(foods[1])"
                hisFoodPrefs3.text = "\(foods[2])"
                hisFoodPrefs4.text = "\(foods[3])"
                spring()
                
                
            default:
                break
                //
                
            }
            
            
            
            
        }
        
        
        
    }
    
    @IBAction func interestedpressed (sender: UIButton!) {
        
        interestInfo2.image = UIImage(named: "interaction")
        ctr2.view.addSubview(interestInfo2)
        interestInfo.removeFromSuperview()
        ctr2.view.addSubview(him)
        ctr2.view.addSubview(me)
        ctr2.view.addSubview(thingsjust)
        ctr2.view.addSubview(little)
        ctr2.view.addSubview(spicier)
        ctr2.view.addSubview(youandhim)
        ctr2.view.addSubview(directions1)
        ctr2.view.addSubview(directions2)
        ctr2.view.addSubview(directions3)
        ctr2.view.addSubview(keepSwiping)
        ctr2.view.addSubview(sendMessage)
        ctr2.view.addSubview(imInterested)
        
        
    }
    
    
    @IBAction func raha3selected (sender: UIButton!) {
        raha1.setImage(UIImage(named: "raha3"), forState: .Normal)
        raha3.layer.borderColor = UIColor(red: 225/255, green: 153.0/255, blue: 11.0/255, alpha: 1.0).CGColor
        raha2.layer.borderColor = UIColor.whiteColor().CGColor
        raha4.layer.borderColor = UIColor.whiteColor().CGColor
        raha5.layer.borderColor = UIColor.whiteColor().CGColor
        
    }
    
    
    
    
    @IBAction func raha4selected (sender: UIButton!) {
        raha1.setImage(UIImage(named: "raha4"), forState: .Normal)
        raha4.layer.borderColor = UIColor(red: 225/255, green: 153.0/255, blue: 11.0/255, alpha: 1.0).CGColor
        raha2.layer.borderColor = UIColor.whiteColor().CGColor
        raha3.layer.borderColor = UIColor.whiteColor().CGColor
        raha5.layer.borderColor = UIColor.whiteColor().CGColor
        
    }
    
    @IBAction func raha5selected (sender: UIButton!) {
        raha1.setImage(UIImage(named: "raha5"), forState: .Normal)
        raha5.layer.borderColor = UIColor(red: 225/255, green: 153.0/255, blue: 11.0/255, alpha: 1.0).CGColor
        raha2.layer.borderColor = UIColor.whiteColor().CGColor
        raha3.layer.borderColor = UIColor.whiteColor().CGColor
        raha4.layer.borderColor = UIColor.whiteColor().CGColor
        
    }
    
    @IBAction func raha2selected (sender: UIButton!) {
        raha1.setImage(UIImage(named: "raha1"), forState: .Normal)
        raha2.layer.borderColor = UIColor(red: 225/255, green: 153.0/255, blue: 11.0/255, alpha: 1.0).CGColor
        raha3.layer.borderColor = UIColor.whiteColor().CGColor
        raha4.layer.borderColor = UIColor.whiteColor().CGColor
        raha5.layer.borderColor = UIColor.whiteColor().CGColor
        
    }
    
    @IBAction func femaleselected (sender: UIButton!) {
        
        femalegender.layer.borderColor = UIColor(red: 225/255, green: 153.0/255, blue: 11.0/255, alpha: 1.0).CGColor
        femalegender.setTitleColor(UIColor(red: 225/255, green: 153.0/255, blue: 11.0/255, alpha: 1.0) , forState: .Normal)
        femalegender.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 15)
        malegender.setTitleColor(UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0) , forState: .Normal)
        malegender.titleLabel?.font = UIFont(name: "Avenir", size: 15)
        whocaresgender.setTitleColor(UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0) , forState: .Normal)
        whocaresgender.layer.borderColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0).CGColor
        malegender.layer.borderColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0).CGColor
        whocaresgender.titleLabel?.font = UIFont(name: "Avenir", size: 15)
        malegender.backgroundColor = UIColor.whiteColor()
        whocaresgender.backgroundColor = UIColor.whiteColor()
        femalegender.layer.borderWidth = 2.0
        malegender.layer.borderWidth = 1.0
        whocaresgender.layer.borderWidth = 1.0
    }
    
    @IBAction func maleselected (sender: UIButton!) {
        malegender.layer.borderColor = UIColor(red: 225/255, green: 153.0/255, blue: 11.0/255, alpha: 1.0).CGColor
        whocaresgender.layer.borderColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0).CGColor
        femalegender.layer.borderColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0).CGColor
        malegender.setTitleColor( UIColor(red: 225/255, green: 153.0/255, blue: 11.0/255, alpha: 1.0) , forState: .Normal)
        malegender.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 15)
        femalegender.setTitleColor(UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0) , forState: .Normal)
        femalegender.titleLabel?.font = UIFont(name: "Avenir", size: 15)
        whocaresgender.setTitleColor(UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0) , forState: .Normal)
        whocaresgender.titleLabel?.font = UIFont(name: "Avenir", size: 15)
        femalegender.backgroundColor = UIColor.whiteColor()
        whocaresgender.backgroundColor = UIColor.whiteColor()
        malegender.layer.borderWidth = 2.0
        femalegender.layer.borderWidth = 1.0
        whocaresgender.layer.borderWidth = 1.0
        
    }
    
    @IBAction func whocaresselected (sender: UIButton!) {
        whocaresgender.layer.borderColor = UIColor(red: 225/255, green: 153.0/255, blue: 11.0/255, alpha: 1.0).CGColor
        whocaresgender.layer.borderWidth = 2.0
        femalegender.layer.borderColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0).CGColor
        malegender.layer.borderColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0).CGColor
        whocaresgender.setTitleColor(UIColor(red: 225/255, green: 153.0/255, blue: 11.0/255, alpha: 1.0) , forState: .Normal)
        whocaresgender.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 15)
        
        femalegender.setTitleColor(UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0) , forState: .Normal)
        femalegender.backgroundColor = UIColor.whiteColor()
        malegender.backgroundColor = UIColor.whiteColor()
        femalegender.titleLabel?.font = UIFont(name: "Avenir", size: 15)
        malegender.setTitleColor(UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0) , forState: .Normal)
        malegender.titleLabel?.font = UIFont(name: "Avenir", size: 15)
        malegender.layer.borderWidth = 1.0
        femalegender.layer.borderWidth = 1.0
        
    }
    
    
    
    func sliderValueDidChange(sender:UISlider!)
    {
        
        let currentValue = Int(sender.value)
        distanceNum.text = "\(currentValue) mi."
    }
    
    func agesliderValueDidChange(sender:UISlider!)
    {
        
        let currentValue1 = Int(ageRange.value)
        let currentValue2 = Int(ageRange2.value)
        ageRangeLabel.text = "\(currentValue1) - \(currentValue2) y.o."
    }
    
    
    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }
    
//    func applicationDidBecomeActive(application: UIApplication) {
//        FBSDKAppEvents.activateApp()
//    }
//    func application(application: UIApplication, openURL url: NSURL,
//                     sourceApplication: String?, annotation: AnyObject) -> Bool {
//        return FBSDKApplicationDelegate.sharedInstance()
//            .application(application, openURL: url,
//                         sourceApplication: sourceApplication, annotation: annotation)
//    }
    
    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    func viewWithBackground(color: UIColor) -> UIView{
        let v = UIView()
        v.backgroundColor = color
        return v
    }
    
    func gradient(percent: Double, topX: Double, bottomX: Double, initC: UIColor, goal: UIColor) -> UIColor{
        let t = (percent - bottomX) / (topX - bottomX)
        
        let cgInit = CGColorGetComponents(initC.CGColor)
        let cgGoal = CGColorGetComponents(goal.CGColor)
        
        
        let r = cgInit[0] + CGFloat(t) * (cgGoal[0] - cgInit[0])
        let g = cgInit[1] + CGFloat(t) * (cgGoal[1] - cgInit[1])
        let b = cgInit[2] + CGFloat(t) * (cgGoal[2] - cgInit[2])
        
        return UIColor(red: r, green: g, blue: b, alpha: 1.0)
    }
    
    
    
    func didTapView(){
        ctr1.view.endEditing(true)
        
    }
    
    
    func spring() {
        man3.transform = CGAffineTransformMakeScale(0.95, 0.95)
        UIView.animateWithDuration(2.0,
                                   delay: 0,
                                   usingSpringWithDamping: 0.2,
                                   initialSpringVelocity: 6.0,
                                   options: UIViewAnimationOptions.AllowUserInteraction,
                                   animations: {
                                    self.man3.transform = CGAffineTransformIdentity
            }, completion: nil)
        man2.transform = CGAffineTransformMakeScale(0.95, 0.95)
        UIView.animateWithDuration(2.0,
                                   delay: 0,
                                   usingSpringWithDamping: 0.2,
                                   initialSpringVelocity: 6.0,
                                   options: UIViewAnimationOptions.AllowUserInteraction,
                                   animations: {
                                    self.man2.transform = CGAffineTransformIdentity
            }, completion: nil)
        man1.transform = CGAffineTransformMakeScale(0.95, 0.95)
        UIView.animateWithDuration(2.0,
                                   delay: 0,
                                   usingSpringWithDamping: 0.2,
                                   initialSpringVelocity: 6.0,
                                   options: UIViewAnimationOptions.AllowUserInteraction,
                                   animations: {
                                    self.man1.transform = CGAffineTransformIdentity
            }, completion: nil)
        man4.transform = CGAffineTransformMakeScale(0.95, 0.95)
        UIView.animateWithDuration(2.0,
                                   delay: 0,
                                   usingSpringWithDamping: 0.2,
                                   initialSpringVelocity: 6.0,
                                   options: UIViewAnimationOptions.AllowUserInteraction,
                                   animations: {
                                    self.man4.transform = CGAffineTransformIdentity
            }, completion: nil)
        man5.transform = CGAffineTransformMakeScale(0.95, 0.95)
        UIView.animateWithDuration(2.0,
                                   delay: 0,
                                   usingSpringWithDamping: 0.2,
                                   initialSpringVelocity: 6.0,
                                   options: UIViewAnimationOptions.AllowUserInteraction,
                                   animations: {
                                    self.man5.transform = CGAffineTransformIdentity
            }, completion: nil)
        
    }
    
    
    
    
    
    
    
    
    
    
    
}







