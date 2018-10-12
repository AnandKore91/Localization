//
//  ViewController.swift
//  Example
//
//  Created by Anand Kore on 12/10/18.
//  Copyright © 2018 Anand Kore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK:- Properties
    @IBOutlet weak var lblWelcome: UILabel!
    @IBOutlet weak var lblNote: UILabel!
    
    //MARK:- Class Life Cycle.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //--- Default Language.
        updateText(forLanguage: .English)
    }

    //MARK:- Actions
    @IBAction func languageChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            updateText(forLanguage: .English)
        }
        else if sender.selectedSegmentIndex == 1{
            updateText(forLanguage: .Arabic)
        }
        else if sender.selectedSegmentIndex == 2{
            updateText(forLanguage: .French)
        }
    }
    
    //MARK:- UI Updaters
    func updateText(forLanguage lang:LanguageCode)  {
        lblWelcome.text = "Hello".localizableString(loc: lang)
        lblNote.text = "Welcome".localizableString(loc: lang)
    }
    
}

