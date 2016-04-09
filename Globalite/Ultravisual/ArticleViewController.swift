//
//  ArticleViewController.swift
//  Ultravisual
//
//  Created by Raha Ghassemi on 4/8/16.
//  Copyright © 2016 Razeware LLC. All rights reserved.
//

import UIKit

class ArticleViewController: UIViewController {
    
    var articleSelected:String = ""
    
  
    
    @IBOutlet var imageView: UIImageView!

    @IBOutlet var publisherImage: UIImageView!

    @IBOutlet var titleLabel: UITextView!
    
    @IBOutlet var textView: UITextView!
    
    @IBOutlet var author: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        if articleSelected == "0" {
            imageView.image = UIImage(named: "aljadetail")
            author.text = "Geoffrey Aronson"
            publisherImage.image = UIImage(named: "aljazeera")
            titleLabel.text = "Donald Trump or Ted Cruz: Pick your poison"
            textView.text = "The United States presidential campaign has reserved the greatest reward for those - at least among Republicans - with the most sinister solutions to its problems. \n\nElectioneering in the US is often a silly season. Candidates, bored stiff by campaigns for election that are measured in months if not years, are constantly looking to add a little something - kissing a horse for example, or like Michael Dukakis in his failed election campaign in 1988, joyriding in a tank, that is newsworthy if not noteworthy.  \n\nBut there is nothing that is funny or even enjoyable about this campaign season. It is hardly a celebration of the US values that all candidates claim to honour, but the opposite."
        }
        if articleSelected == "1" {
            author.text = "jpost.com staff"
            imageView.image = UIImage(named: "Bernie")
            publisherImage.image = UIImage(named: "jerusalempost")
            titleLabel.text = "Israeli minister demands apology from US presidential candidate."
            textView.text = "The United States presidential campaign has reserved the greatest reward for those - at least among Republicans - with the most sinister solutions to its problems. \n\nElectioneering in the US is often a silly season. Candidates, bored stiff by campaigns for election that are measured in months if not years, are constantly looking to add a little something - kissing a horse for example, or like Michael Dukakis in his failed election campaign in 1988, joyriding in a tank, that is newsworthy if not noteworthy.  \n\nBut there is nothing that is funny or even enjoyable about this campaign season. It is hardly a celebration of the US values that all candidates claim to honour, but the opposite."
        }
        if articleSelected == "2" {
            author.text = "Markus Feldenkirchen"
            imageView.image = UIImage(named: "germandetail")
            titleLabel.text = "Opinion: America's Election Shame"
            publisherImage.image = UIImage(named: "spiegel")
            textView.text = "The United States presidential campaign has reserved the greatest reward for those - at least among Republicans - with the most sinister solutions to its problems. \n\nElectioneering in the US is often a silly season. Candidates, bored stiff by campaigns for election that are measured in months if not years, are constantly looking to add a little something - kissing a horse for example, or like Michael Dukakis in his failed election campaign in 1988, joyriding in a tank, that is newsworthy if not noteworthy.  \n\nBut there is nothing that is funny or even enjoyable about this campaign season. It is hardly a celebration of the US values that all candidates claim to honour, but the opposite."
        }
        if articleSelected == "3" {
            author.text = "Shaun Tandon"
            imageView.image = UIImage(named: "africadetail")
            publisherImage.image = UIImage(named: "southafrica")
            titleLabel.text = "Trump can't 'jump around' to Everlast's song"
            textView.text = "The United States presidential campaign has reserved the greatest reward for those - at least among Republicans - with the most sinister solutions to its problems. \n\nElectioneering in the US is often a silly season. Candidates, bored stiff by campaigns for election that are measured in months if not years, are constantly looking to add a little something - kissing a horse for example, or like Michael Dukakis in his failed election campaign in 1988, joyriding in a tank, that is newsworthy if not noteworthy.  \n\nBut there is nothing that is funny or even enjoyable about this campaign season. It is hardly a celebration of the US values that all candidates claim to honour, but the opposite."
            
        }
        if articleSelected == "4" {
            author.text = "Chris Cillizza"
            imageView.image = UIImage(named: "nzdetail")
            publisherImage.image = UIImage(named: "nzherald")
            titleLabel.text = "Trump rearranges his advisers after latest setback - but will he listen?"
            textView.text = "The United States presidential campaign has reserved the greatest reward for those - at least among Republicans - with the most sinister solutions to its problems. \n\nElectioneering in the US is often a silly season. Candidates, bored stiff by campaigns for election that are measured in months if not years, are constantly looking to add a little something - kissing a horse for example, or like Michael Dukakis in his failed election campaign in 1988, joyriding in a tank, that is newsworthy if not noteworthy.  \n\nBut there is nothing that is funny or even enjoyable about this campaign season. It is hardly a celebration of the US values that all candidates claim to honour, but the opposite."
            
        }
        if articleSelected == "5" {
            author.text = "Chidanand Rajghatta"
            imageView.image = UIImage(named: "indiadetail")
            publisherImage.image = UIImage(named: "timesofindia")
            titleLabel.text = "Ted Cruz missile a dud in Donald Trump's New York"
            textView.text = "The United States presidential campaign has reserved the greatest reward for those - at least among Republicans - with the most sinister solutions to its problems. \n\nElectioneering in the US is often a silly season. Candidates, bored stiff by campaigns for election that are measured in months if not years, are constantly looking to add a little something - kissing a horse for example, or like Michael Dukakis in his failed election campaign in 1988, joyriding in a tank, that is newsworthy if not noteworthy.  \n\nBut there is nothing that is funny or even enjoyable about this campaign season. It is hardly a celebration of the US values that all candidates claim to honour, but the opposite."
            
        }


        textView.font = UIFont(name: "GillSans", size: 15)
        titleLabel.font = UIFont(name: "Georgia", size: 20)
        titleLabel.textColor = UIColor.whiteColor()
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
