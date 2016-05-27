//
//  ViewController.swift
//  Silly Song
//
//  Created by Carlos Rivera on 5/23/16.
//  Copyright © 2016 Carlos Rivera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var nameField: UITextField!
    
    //@IBOutlet weak var lyricsView: UITextView!
    
    @IBOutlet weak var lyricsView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         nameField.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func reset(sender: AnyObject) {
        nameField.text = ""
        lyricsView.text = ""
    }
    
    
    
    @IBAction func displayLyrics(sender: AnyObject) {
        
        if nameField.text != "" {
            //print("bad santa")
            lyricsView.text = lyricsForName(bananaFanaTemplate, fullName: (nameField.text!))

        }

    }
    

}



func shortNameFromName(fullName: String) -> String {
    // implementation here
    let lowercaseName = fullName.lowercaseString
    let vowels = NSCharacterSet(charactersInString: "aeiou")
    
   if let firstVowelRange = fullName.lowercaseString.rangeOfCharacterFromSet(vowels, options: .CaseInsensitiveSearch) {
        return lowercaseName.substringFromIndex(firstVowelRange.startIndex)
    }
    
    
    return lowercaseName
    print(lowercaseName)
    
}


func lyricsForName(lyricsTemplate: String, fullName: String) -> String {
    
    let shortName = shortNameFromName(fullName)
    
    let lyrics = lyricsTemplate
        .stringByReplacingOccurrencesOfString("<FULL_NAME>", withString: fullName)
        .stringByReplacingOccurrencesOfString("<SHORT_NAME>", withString: shortName)
    
    print(fullName)
    return lyrics
    print("Andre")
    print(fullName)
}


// join an array of strings into a single template string:
let bananaFanaTemplate = [
    "<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>",
    "Banana Fana Fo F<SHORT_NAME>",
    "Me My Mo M<SHORT_NAME>",
    "<FULL_NAME>"].joinWithSeparator("\n")

//print(lyricsForName(bananaFanaTemplate, fullName: "Carlos"))


// MARK: - UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
    
}

