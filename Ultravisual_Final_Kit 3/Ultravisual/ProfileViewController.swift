//
//  ProfileViewController.swift
//  Blacklisted
//
//  Created by Raha Ghassemi on 12/9/15.
//  Copyright © 2015 Razeware LLC. All rights reserved.
//

import UIKit




class ProfileViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var candidateLabel: UILabel!
 

    @IBOutlet weak var candbusiness: UIImageView!
    
    var candidateSelected:String = ""
     var carson: [String] = ["Northwestern Mutual","Coca-Cola Co","Wells Fargo","Blue Ocean Enterprise","Apartment Realty Advisors","Ankom Technology","Primecap Management","West Coast Venture Capital","Trailiner Corp","Northwestern Mutual Life","Retail Planning Corp","Janus International Group","US Army","US Air Force","STI Enterprises","Eti Software Solutions","Timberlake Sale","UBS AG","Spencer's Inc"]


    var imageView: UIImageView!
    
    @IBOutlet var textView: UITextView!

    
    @IBOutlet weak var candidateImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(candidateSelected)
        
        
        if (candidateSelected == "0"){
            candidateLabel?.text = "Jeb Bush (R)"
            candidateImage?.image = UIImage(named: "JebBush1")
            textView?.text = "1. Goldman Sachs ($192,500) \n\n2. Neuberger Berman LLC ($92,800) \n\n3. Bank of America ($88,960) \n\n4. Barclays ($66,875) \n\n5. Cushman & Wakefield ($65,350) \n\n6. Citigroup Inc ($56,150) \n\n7. Wal-Mart Stores ($54,275) \n\n8. Morgan Stanley ($49,740) \n\n9. Credit Suisse Group ($47,000) \n\n10. JPMorgan Chase & Co ($45,753) \n\n11. Tenet Healthcare ($44,615) \n\n12. Rooney Holdings ($40,500) \n\n13. DLA Piper ($40,300) \n\n14. NextEra Energy ($39,200) \n\n15. Gibson, Dunn & Crutcher ($38,150) \n\n16. Greenberg Traurig LLP ($38,061) \n\n17. Jeb 2016 (Employees) ($37,982) \n\n18. CSX Corp ($37,800) \n\n19. Xpo Logistics ($34,200) \n\n20. Guggenheim Partners ($32,400)"
        }
        if (candidateSelected == "1"){
            candidateLabel?.text = "Ben Carson (R)"
            candidateImage?.image = UIImage(named: "bencarson1")
            textView?.text = "1. Northwestern Mutual ($48,925) \n\n2. Coca-Cola Co ($22,850) \n\n3. Wells Fargo ($19,501) \n\n4. Blue Ocean Enterprise ($16,200) \n\n5. Apartment Realty Advisors ($14,150) \n\n6. Ankom Technology ($12,890) \n\n7. Advisors Excel ($11,350) \n\n8. Primecap Management ($10,800) \n\n9. West Coast Venture Capital ($10,800) \n\n10. Trailiner Corp ($10,800) \n\n11. Northwestern Mutual Life ($10,150) \n\n12. Retail Planning Corp ($10,000) \n\n13. Janus International Group ($10,000) \n\n14. US Army ($9,997) \n\n15. US Air Force ($8,935) \n\n16. STI Enterprises ($8,100) \n\n17. Eti Software Solutions ($8,040) \n\n18. Timberlake Sale ($8,000) \n\n19. UBS AG ($7,950) \n\n20. Spencer's Inc ($7,400)"
        }
        if (candidateSelected == "2"){
            candidateLabel?.text = "Chris Christie (R)"
            candidateImage?.image = UIImage(named: "chrischristie1")
            textView?.text = "1. Gibbons PC ($46,400) \n\n2. Bergen Anesthesia Group ($37,800) \n\n3. Langan Engineering & Environmental Services ($28,500) \n\n4. State New Jersey ($27,800) \n\n5. Angelo, Gordon & Co ($22,900) \n\n6. McElroy, Deutsch et al ($18,050) \n\n7. Coordinated Health ($16,800) \n\n8. Saker ShopRites ($16,500) \n\n9. Inserra Supermarkets ($16,200) \n\n10. Winston & Strawn ($15,900) \n\n11. Ajd Construction Co ($13,500) \n\n12. Celgene Corp ($13,500) \n\n13. Connell Foley LLP ($13,050) \n\n14. Raia Properties ($12,800) \n\n15. Dughi, Hewit & Domalewski ($12,100) \n\n16. Jones Lang LaSalle ($11,800) \n\n17. Princeton Public Affairs ($10,800) \n\n18. Actavis Inc ($10,800) \n\n19. Premio Foods ($10,800) \n\n20. JPMorgan Chase & Co ($10,100)"
        }
        if (candidateSelected == "3"){
            candidateLabel?.text = "Hilary Clinton (D)"
            candidateImage?.image = UIImage(named: "HillaryClinton")
            textView?.text = "1. Morgan & Morgan ($277,826) \n\n2. EMILY's List ($239,340) \n\n3. Corning Inc ($212,800) \n\n4. DISH Network ($203,846) \n\n5. DLA Piper ($171,200) \n\n6. Sullivan & Cromwell ($156,350) \n\n7. University of California ($149,841) \n\n8. Time Warner ($134,710) \n\n9. Akin, Gump et al ($133,756) \n\n10. Morgan Stanley ($132,923) \n\n11. Alphabet Inc ($105,296) \n\n12. Harvard University ($105,059) \n\n13. Yale University ($104,266) \n\n14. Latham & Watkins ($102,800) \n\n15. JPMorgan Chase & Co ($99,503) \n\n16. Creative Artists Agency ($95,951) \n\n17. Munger, Tolles & Olson ($94,900) \n\n18. Bank of America ($93,759) \n\n19. Steptoe & Johnson ($88,343) \n\n20. Skadden, Arps et al ($84,662)"
        }
        if (candidateSelected == "4"){
            candidateLabel?.text = "Ted Cruz (R)"
            candidateImage?.image = UIImage(named: "TedCruz1")
            textView?.text = "1. Make DC Listen ($91,725) \n\n2. Woodforest National Bank ($86,050) \n\n3. Goldman Sachs ($43,575) \n\n4. Morgan, Lewis & Bockius ($42,550) \n\n5. Jennmar Corp ($40,850) \n\n6. Ashford Hospitality Trust ($40,400) \n\n7. NorPAC ($39,450) \n\n8. Pachulski, Stang et al ($38,300) \n\n9. Redman Management ($37,800) \n\n10. Murray Energy ($36,875) \n\n11. Gibson, Dunn & Crutcher ($36,756) \n\n12. Quantum Energy Partners ($35,100) \n\n13. Saulsbury Industries ($34,500) \n\n14. Teligistics Inc ($33,700) \n\n15. Avalon Advisors ($33,400) \n\n16. McAllen Anesthesia Consultants ($28,100) \n\n17. Heller Realty ($27,000) \n\n18. Glazer's Distributors ($26,825) \n\n19. Baker & McKenzie ($24,800) \n\n20. Bracewell & Giuliani ($24,300)"
        }
        if (candidateSelected == "5"){
            candidateLabel?.text = "Carly Fiorina (R)"
            candidateImage?.image = UIImage(named: "carly1")
            textView?.text = "1. Western Care Construction ($18,900) \n\n2. Woodbridge Structured Funding ($16,200) \n\n3. LISI Inc ($12,100) \n\n4. Keller Investment Properties ($10,800) \n\n5. Renaissance Technologies ($10,800) \n\n6. Baupost Group ($9,100) \n\n7. Stoney Creek Inn ($8,107) \n\n8. Cognex Corp ($8,100) \n\n9. Wilson, Sonsini et al ($8,100) \n\n10. Cumberland Development ($8,100) \n\n11. Echo Pacific Construction ($7,900) \n\n12. Impala Asset Management ($7,500) \n\n13. Wells Fargo ($7,200) \n\n14. Hewlett-Packard ($7,171) \n\n15. Goldman Sachs ($6,450) \n\n16. CAC Group ($6,400) \n\n17. Love's Travel Stops ($6,400) \n\n18. Hobby Lobby Stores ($5,900) \n\n19. Lockheed Martin ($5,750) \n\n20. Carly For President ($5,693)"
        }
        if (candidateSelected == "6"){
            candidateLabel?.text = "Jim Gilmore (R)"
            candidateImage?.image = UIImage(named: "jimgilmore1")
            textView?.text = "1. Troutman Sanders ($2,700) \n\n2. Capital Ventures ($2,700) \n\n3. Nexus Services Inc ($2,700) \n\n4. Dentons ($2,700) \n\n5. Ofwlaw ($2,700) \n\n6. Dewberry ($2,700) \n\n7. Fiscal Wizard Inc ($2,700) \n\n8. George Mason University ($2,700) \n\n9. Alaska Structures ($2,700) \n\n10. Southern Engineering ($2,700) \n\n11. American Systems Corp ($2,700) \n\n12. UBS Financial Services ($2,700) \n\n13. Apollo Management ($2,700) \n\n14. Johanson Dielectrics ($2,700) \n\n15. Jones Day ($2,700) \n\n16. Moss & Rocovich ($1,000) \n\n17. Keller Williams Real Estate ($1,000) \n\n18. Patriots Cmte ($1,000) \n\n19. Friends Of Fannon (Va Candidate Cmte) ($1,000) \n\n20. Sotheby's ($500)"
        }
        if (candidateSelected == "7"){
            candidateLabel?.text = "Lindsey Graham (R)"
            candidateImage?.image = UIImage(named: "lindseygraham1")
            textView?.text = "1. Access Industries ($48,600) \n\n2. Nelson, Mullins et al ($39,100) \n\n3. Harrison, White et al ($37,850) \n\n4. General Electric ($28,800) \n\n5. Oracle Corp ($21,900) \n\n6. Southeastern Freight Lines ($21,600) \n\n7. Privateer Capital ($21,600) \n\n8. Stephens Group ($19,000) \n\n9. Westrock Capital Partners ($18,200) \n\n10. Edens ($18,200) \n\n11. Park & Washington ($16,400) \n\n12. Alice Manufacturing ($16,400) \n\n13. Vallarino Construction ($16,200) \n\n14. Hertog Foundation ($15,000) \n\n15. Nalley Construction Co ($13,500) \n\n16. MDC Holdings ($13,500) \n\n17. Johnson Development ($13,300) \n\n18. Cooper Investment Partners ($10,800) \n\n19. Frank Family Vineyards ($10,800) \n\n20. HJ Kalikow & Co ($10,800)"
        }
        if (candidateSelected == "8"){
            candidateLabel?.text = "Mike Huckabee (R)"
            candidateImage?.image = UIImage(named: "MikeHuckabee1")
            textView?.text = "1. Blessey Marine Service ($13,100) \n\n2. Theory R Properties ($10,800) \n\n3. Home Bancshares ($10,600) \n\n4. Parker Automotive Group ($10,000) \n\n5. State of Arkansas ($9,985) \n\n6. Centennial Bank ($8,781) \n\n7. Rogers Group ($8,100) \n\n8. Karl Senner LLC ($8,100) \n\n9. US Senate ($8,100) \n\n10. E Gluck Corp ($7,500) \n\n11. First Tape & Label ($7,433) \n\n12. State Farm Insurance ($6,650) \n\n13. Timothy Partners Ltd ($5,900) \n\n14. Wilson & Assoc ($5,900) \n\n15. Jack Sisemore Traveland ($5,778) \n\n16. El Dorado Holdings ($5,649) \n\n17. First Presbyterian Church ($5,425) \n\n18. Liftable Media ($5,400) \n\n19. Servicenow ($5,400) \n\n20. Blackwood Singers ($5,400)"
        }
        if (candidateSelected == "9"){
            candidateLabel?.text = "John Kasich (R)"
            candidateImage?.image = UIImage(named: "johnkasich1")
            textView?.text = "1. Plaskolite ($37,100) \n\n2. Medical Mutual ($35,150) \n\n3. Dinsmore & Shohl ($24,150) \n\n4. Jones Day ($20,500) \n\n5. Kokosing ($18,900) \n\n6. Resource International Inc ($18,900) \n\n7. Superior Beverage Group ($18,900) \n\n8. Rumpke Consolidated ($18,900) \n\n9. NiSource Inc ($17,900) \n\n10. Kokosing Construction ($16,300) \n\n11. Benesch, Friedlander, Coplan & Arnoff Llp ($16,200) \n\n12. Total Quality Logisitics ($16,200) \n\n13. Calfee, Halter & Griswold ($16,200) \n\n14. Castellini Group of Companies ($13,500) \n\n15. Pvs Chemicals ($13,500) \n\n16. FE Moran Inc ($11,800) \n\n17. Ed White Cpa's ($11,521) \n\n18. Total Quality Logistics ($10,800) \n\n19. Parker-Hannifin ($10,800) \n\n20. Beerco ($10,800)"
        }
        if (candidateSelected == "10"){
            candidateLabel?.text = "Martin O'Malley (D)"
            candidateImage?.image = UIImage(named: "MartinOMalley")
            textView?.text = "1. Venable LLP ($35,850) \n\n2. Total Wine & More ($23,130) \n\n3. State of Maryland ($16,150) \n\n4. Kidz Club ($13,750) \n\n5. Sheehy Auto Stores ($11,800) \n\n6. Cozen O'Connor ($11,400) \n\n7. Beowulf Energy ($10,800) \n\n8. Terraform Power ($10,800) \n\n9. Mintz, Levin et al ($10,400) \n\n10. Lydecker Diaz ($10,100) \n\n11. Johns Hopkins University ($9,650) \n\n12. Advisory Board Co ($9,600) \n\n13. Forde Law Offices ($9,350) \n\n14. Discovery Communications ($9,100) \n\n15. Fortis Property Group ($8,100) \n\n16. Riverside Health ($8,098) \n\n17. Cornerstone Government Affairs ($7,400) \n\n18. Louis Berger Group ($7,200) \n\n19. Van Scoyoc Assoc ($6,700) \n\n20. Akin, Gump et al ($6,450)"
        }
        if (candidateSelected == "11"){
            candidateLabel?.text = "George Pataki (R)"
            candidateImage?.image = UIImage(named: "georgepataki")
            textView?.text = "1. Chadbourne & Parke ($13,750) \n\n2. Hispaniola Medical Care ($8,100) \n\n3. AKT Development ($8,100) \n\n4. PJ Mechanical Corp ($8,100) \n\n5. Mercury ($8,100) \n\n6. Red Apple Group ($5,400) \n\n7. Hoguet, Newman et al ($5,400) \n\n8. Cushman & Wakefield ($5,400) \n\n9. Medikids ($5,400) \n\n10. Pinebrook Group ($5,400) \n\n11. Reynolds for Congress ($4,000) \n\n12. Lifeworks Technology ($2,700) \n\n13. Palm Restaurant ($2,700) \n\n14. Kidz Concepts ($2,700) \n\n15. Park Strategies ($2,700) \n\n16. Imaging Medical Solutions ($2,700) \n\n17. Wac Auto ($2,700) \n\n18. Academy Medical Care ($2,700) \n\n19. George Demos Esq ($2,700) \n\n20. Centurion Holdings ($2,700)"
        }
        if (candidateSelected == "12"){
            candidateLabel?.text = "Marco Rubio (R)"
            candidateImage?.image = UIImage(named: "MARCORUBIO")
            textView?.text = "1. Goldman Sachs ($79,600) \n\n2. Steward Health Care ($44,600) \n\n3. Gateway American Resources ($32,400) \n\n4. Titan Farms ($30,900) \n\n5. Steward Physician Network ($30,400) \n\n6. Oracle Corp ($27,000) \n\n7. UBS AG ($24,400) \n\n8. Horowitz Group ($21,600) \n\n9. Dwd Mechanical Contractor ($21,600) \n\n10. McNa Dental Plans ($20,600) \n\n11. Elgin Toyota ($19,860) \n\n12. Morgan Stanley ($19,714) \n\n13. Florida Crystals ($19,640) \n\n14. Everest Properties ($18,500) \n\n15. Realogy Corp ($17,150) \n\n16. Wiley Rein LLP ($17,100) \n\n17. Koch Industries ($17,050) \n\n18. CKE Restaurants ($16,400) \n\n19. McM Corp ($16,331) \n\n20. Capital Corp ($16,220)"
        }
        if (candidateSelected == "13"){
            candidateLabel?.text = "Bernie Sanders (D)"
            candidateImage?.image = UIImage(named: "BERNIESANDERS")
            textView?.text = "1. Alphabet Inc ($50,776) \n\n2. University of California ($28,176) \n\n3. Microsoft Corp ($16,652) \n\n4. Apple Inc ($14,407) \n\n5. Columbia University ($12,058) \n\n6. Amazon.com ($11,572) \n\n7. University of Illinois ($10,948) \n\n8. US Postal Service ($10,838) \n\n9. Business Matters in the Visual Arts ($10,000) \n\n10. US Air Force ($9,774) \n\n11. Cornell University ($8,569) \n\n12. US Navy ($7,969) \n\n13. Kaiser Permanente ($7,858) \n\n14. IBM Corp ($7,620) \n\n15. Boeing Co ($7,466) \n\n16. EMC Corp ($7,458) \n\n17. US Government ($7,312) \n\n18. United Parcel Service ($7,220) \n\n19. Los Angeles County, CA ($7,201) \n\n20. Mr ($7,149)"
        }
        if (candidateSelected == "14"){
            candidateLabel?.text = "Rick Santorum (R)"
            candidateImage?.image = UIImage(named: "RICKSANTORUM")
            textView?.text = "1. Pogue Construction ($10,90) \n\n2. Enigma Software ($10,800) \n\n3. Blue Cross/Blue Shield ($9,100) \n\n4. Kimber Manufacturing ($8,100) \n\n5. Beaman Automotive Group ($8,100) \n\n6. Elkins Plc ($8,100) \n\n7. Centurion American ($7,400) \n\n8. Enigma Software Group ($6,900) \n\n9. Nature Nates ($5,400) \n\n10. Modus ($5,400) \n\n11. Bostic Law Firm ($5,400) \n\n12. Signature Custom Cabinetry ($5,400) \n\n13. Woodbridge Structured Funding ($5,400) \n\n14. Moran Industries ($5,400) \n\n15. Mita Management ($5,400) \n\n16. JPMorgan Chase & Co ($5,400) \n\n17. Merriman Assoc ($5,400) \n\n18. Fiamma Partners ($5,400) \n\n19. Global Technical Services ($5,400) \n\n20. Kirkland & Ellis ($5,400)"
        }
        if (candidateSelected == "15"){
            candidateLabel?.text = "Jill Stein (G)"
            candidateImage?.image = UIImage(named: "JillStein")
            textView?.text = "1. AON Corp ($2,700) \n\n2. Xoom Global Money Transfer ($2,600) \n\n3. Thoughtworks Inc ($2,000) \n\n4. Jeanb.Kaplan@verizon.net ($1,000) \n\n5. ! ($1,000) \n\n6. Baltimore Public Schools ($1,000) \n\n7. Brtwd@hotmail.com ($888) \n\n8. United Parcel Service ($750) \n\n9. US Postal Service ($550) \n\n10. Embry-Riddle Aeronautical University ($500) \n\n11. City of Rochester, NY ($500) \n\n12. Tenet ($500) \n\n13. University of Wisconsin ($500) \n\n14. USGS ($500) \n\n15. Car Sales & Financing ($500) \n\n16. University of Maryland ($500) \n\n17. International Music & Art Foundation ($500) \n\n18. Cusd 303 ($500) \n\n19.Grace University Medical ($500) \n\n20. Universal Avionics Systems ($500)"
        }
        if (candidateSelected == "16"){
            candidateLabel?.text = "Donald Trump (R)"
            candidateImage?.image = UIImage(named: "DonaldTrump")
            textView?.text = "1. MDC Holdings ($10,800) \n\n2. Heritage Bag Co ($5,400) \n\n3. Emergency Care Dynamics ($5,400) \n\n4. Milwaukee Rheumatology Center ($5,400) \n\n5. Meridian Capital ($5,000) \n\n6. US Dept of Defense ($3,419) \n\n7. Osg Inc ($3,241) \n\n8. Price Point ($3,078) \n\n9. One Hour Ac ($3,000) \n\n10. Tiger Global Management ($2,972) \n\n11. Robinson Holdings ($2,813) \n\n12. Avair ($2,757) \n\n13. William E Martin & Sons ($2,700) \n\n14. Vtmi Inc ($2,700) \n\n15. Whiteford'S Inc ($2,700) \n\n16. Swan Creek Candle Co ($2,700) \n\n17. Kaiser Permanente Hospital ($2,700) \n\n18. McGeorge Rolling Hills RV ($2,700) \n\n19. Tv Personality Bail Bondsman ($2,700) \n\n20. Walnut Bottom Radiology ($2,700)"
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    

}
