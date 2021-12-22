//
//  FinalViewController.swift
//  AnimalQuiz
//
//  Created by user207855 on 12/20/21.
//

import UIKit

class FinalViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var resultDescriptionLabel: UILabel!
    
    var choosenAnswers: [Answer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.setHidesBackButton(true, animated: false)
        
        let (label, description) = countResult()
        resultLabel.text = "Ты - \(label)"
        resultDescriptionLabel.text = description
    }
    
    private func countResult() -> (String, String) {
        var results: [AnimakType : Int] = [
            .dog : 0,
            .cat : 0,
            .rabbit : 0,
            .turtle : 0
        ]
        
        for answer in choosenAnswers {
            results[answer.type]! += 1
        }
        let maximumAnimal = results.max { a, b in a.value < b.value}!
        
        return (String(maximumAnimal.key.rawValue),  maximumAnimal.key.definition)
    }
}
