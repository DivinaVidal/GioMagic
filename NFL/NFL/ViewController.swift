//
//  ViewController.swift
//  QuizApp
//
//  Created by Andrew Seeley on 14/2/17.
//  Copyright © 2017 Seemu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    struct Question {
        let question: String
        let answers: [String]
        let correctAnswer: Int
    }
    
    
    var questions: [Question] = [
        Question(
            question: "How many superbowls have the Packers won? ",
            answers: ["3", "5", "2", "4"],
            correctAnswer: 3),
        Question(
            question: "When was the first superbowl?",
            answers: ["1970", "1967", "1965", "1960"],
            correctAnswer: 1),
        Question(
            question: "What is the team for Dallas, Texas?",
            answers: ["Texans", "Cowboys", "Colts", "Jaguars"],
            correctAnswer: 1),
        Question(
            question: "What team won 3 superbowls in the 90s?",
            answers: ["Broncos", "49ers", "patriots", "Cowboys"],
            correctAnswer: 0)
    ]
    
    var currentQuestion: Question?
    var currentQuestionPos = 0
    
    var noCorrect = 0
    
    
    @IBOutlet var lblQuestion: UITextView!
    @IBOutlet var answer0: UIButton!
    @IBOutlet var answer1: UIButton!
    @IBOutlet var answer2: UIButton!
    @IBOutlet var answer3: UIButton!
    
    @IBOutlet var lblProgress: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
        currentQuestion = questions[0]
        setQuestion()
        //setGradientBackground()
    }
    func assignbackground(){
            let background = UIImage(named: "Picture.jpg")

            var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
            imageView.clipsToBounds = true
            imageView.image = background
            imageView.center = view.center
        imageView.alpha = 0.8
            view.addSubview(imageView)
            self.view.sendSubviewToBack(imageView)
        }

    
    
    // Submit an answer
    @IBAction func submitAnswer0(_ sender: Any) {
        checkAnswer(idx: 0)
    }
    
    @IBAction func submitAnswer1(_ sender: Any) {
        checkAnswer(idx: 1)
    }
    
    @IBAction func submitAnswer2(_ sender: Any) {
        checkAnswer(idx: 2)
    }
    @IBAction func submitAnswer3(_ sender: Any) {
        checkAnswer(idx: 3)
    }
    
    // Check if an answer is correct then load the next question
    func checkAnswer(idx: Int) {
        if(idx == currentQuestion!.correctAnswer) {
            noCorrect += 1
        }
        loadNextQuestion()
    }
    
    
    
    func loadNextQuestion() {
        // Show next question
        if(currentQuestionPos + 1 < questions.count) {
            currentQuestionPos += 1
            currentQuestion = questions[currentQuestionPos]
            setQuestion()
        // If there are no more questions show the results
        } else {
            performSegue(withIdentifier: "sgShowResults", sender: nil)
        }
        

    }
    
    // Set labels and buttions for the current question
    func setQuestion() {
        lblQuestion.text = currentQuestion!.question
        answer0.setTitle(currentQuestion!.answers[0], for: .normal)
        answer1.setTitle(currentQuestion!.answers[1], for: .normal)
        answer2.setTitle(currentQuestion!.answers[2], for: .normal)
        answer3.setTitle(currentQuestion!.answers[3], for: .normal)
        lblProgress.text = "\(currentQuestionPos + 1) / \(questions.count)"
    }
    
    // Set the background as a blue gradient
    /*func setGradientBackground() {
        let colorTop =  UIColor.black.cgColor
        let colorBottom = UIColor.blue.cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [ colorTop, colorBottom]
        gradientLayer.locations = [ 0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }*/
    
    // Before we move to the results screen pass the how many we got correct, and the total number of questions
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "sgShowResults") {
            let vc = segue.destination as! ResultsViewController
            vc.noCorrect = noCorrect
            vc.total = questions.count
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

