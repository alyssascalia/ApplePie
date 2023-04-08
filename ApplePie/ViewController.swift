//
//  ViewController.swift
//  ApplePie
//
//  Created by Alyssa Scalia on 3/28/23.
//

import UIKit

class ViewController: UIViewController {
    
    var listOfWords = ["gorilla", "pilgrimage", "can", "orphanage", "mafia", "spaghetti"]
    
    let incorrectMovesAllowed = 6
    
    var totalWins = 0
    var totalLosses = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
        // Do any additional setup after loading the view.
    }
    
    var currentGame: Game!
    
    func newRound() {let newWord = listOfWords.removeFirst()
    currentGame = Game(word: newWord, incorrectMovesRemaining:
        incorrectMovesAllowed, guessedLetters: [])
        updateUI()
    }
    
    func updateUI() {
        correctWordLabel.text = currentGame.formattedWord
        scoreLabel.text = "Wins: \(totalWins) Losses:  \(totalLosses)"
        treeImage.image = UIImage (named: "Tree  (currentGame.incorrectMovesRemaining)")
    }
    
    @IBOutlet var treeImage: UIImageView!
    
    @IBOutlet var correctWordLabel: UILabel!
    
    @IBOutlet var scoreLabel: UILabel!
    
    @IBOutlet var letterButtons: [UIButton]!
    
    @IBAction func letterButtonPressed(_ sender: UIButton) { sender.isEnabled = false
        let letterString = sender.configuration!.title!
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        func updateGameSate() {
            if
        }
    }
    
    
}
