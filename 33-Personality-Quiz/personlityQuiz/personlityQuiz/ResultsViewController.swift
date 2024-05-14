//
//  ResultsViewController.swift
//  personlityQuiz
//
//  Created by Macbook pro  on 13/05/24.
//

import UIKit

class ResultsViewController: UIViewController {

    
    var responses: [Answer] = []
    
    
    init?(coder: NSCoder, responses:[Answer]){
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var resultAnswerLabel: UILabel!
 
    
    @IBOutlet weak var resultDefinationLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        calculatePersonlaityResult()
        navigationItem.hidesBackButton = true
    }
    
  
    func calculatePersonlaityResult(){
        let frequencyOfAnswers = responses.reduce(into:[:]){
            (counts,answer) in
            counts[answer.type, default:0] += 1
        }
       
        
        
        let frequentAnswersSorted = frequencyOfAnswers.sorted(by: {
            (pair1,pair2) in
            return pair1.value > pair2.value
        })
        
        let mostCommonAnswer = frequencyOfAnswers.sorted{$0.1 > $1.1}.first!.key
        
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultDefinationLabel.text = mostCommonAnswer.defination
        
        
    }
    
  

}
