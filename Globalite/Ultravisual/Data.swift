//
//  Data.swift
//  Ultravisual
//
//  Created by Raha Ghassemi on 4/9/16.
//  Copyright © 2016 Razeware LLC. All rights reserved.
//

import Foundation

class Data {
    class Entry {
        let Title : String
        let Pick : String
        let Country : String
        let Publisher : String
        init(title : String, pick : String, country : String, publisher: String) {
            self.Pick = pick
            self.Title = title
            self.Country = country
            self.Publisher = publisher
        }
        
    }
    
    let places = [
        Entry(title: "Donald Trump or Ted Cruz: Pick your poison", pick: "Staff Note: The leading Republican presidential candidates both don't bode well for the Middle East, writes this Al Jazeera reporter.", country: "QATAR", publisher: "aljazeera"),
        Entry(title: "Israeli minister demands apology from US presidential candidate.", pick: "Staff Note: A statement by US presidential candidate Bernie Sanders about the 2014 war in Gaza have caused indignation in Israel.", country: "ISRAEL", publisher: "jerusalempost"),
        Entry(title: "Opinion: America's Election Shame", pick: "Staff Note: US Republicans have nurtured the decline in political culture that 'is a mixture of primary school, mafia and porn industry', argues this Spiegel reporter.", country: "GERMANY", publisher: "spiegel"),
        Entry(title: "Trump can't 'jump around' to Everlast's song", pick: "Staff Note: The US Rapper urged the US presidential candidate Donald Trump to stop playing his track at rallies.", country: "SOUTH AFRICA", publisher: "southafrica"),
        Entry(title: "Trump rearranges his advisers after latest setback - but will he listen?", pick: "Staff Note: The Republican frontrunner is acknowledging the need of political professionals within 'Trumpworld', writes this NZHerald reporter.", country: "NEW ZEALAND", publisher: "nzherald"),
        Entry(title: "Ted Cruz missile a dud in Donald Trump's New York", pick: "Staff Note: The Republican candidates isn't welcome in the city which he had dismissed for its values before.", country: "INDIA", publisher: "timesofindia")
        
    ]
    
}