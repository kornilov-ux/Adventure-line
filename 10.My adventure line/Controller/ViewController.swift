//
//  ViewController.swift
//  10.My adventure line
//
//  Created by Alex  on 16.10.2023.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var storyLabel: UILabel!
	@IBOutlet weak var choice1Button: UIButton!
	@IBOutlet weak var choice2Button: UIButton!
	
	var storyBrain = StoryBrain()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		updateUI()
	}

	@IBAction func choiceMade(_ sender: UIButton) {
		
		storyBrain.nextStories(userChoice: sender.currentTitle!)
		updateUI()
	}
	
	func updateUI() {
		 if storyBrain.isGameOver {
			 // Опции для завершения игры
			 let alert = UIAlertController(title: "Game Over", message: "Do you want to start again?", preferredStyle: .alert)
			 
			 let yesAction = UIAlertAction(title: "Yes", style: .default) { _ in
				 self.restartGame()
			 }
			 
			 let noAction = UIAlertAction(title: "No", style: .cancel) { _ in
				 self.dismiss(animated: true, completion: nil)
			 }
			 
			
			 alert.addAction(yesAction)
			 alert.addAction(noAction)
			 present(alert, animated: true, completion: nil)
		 } else {
			 storyLabel.text = storyBrain.storyTitle()
			 choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
			 choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
		 }
	 }
	 
	 func restartGame() {
		 storyBrain.isGameOver = false
		 storyBrain.storyNumber = 0
		 updateUI()
	 }
	
}

