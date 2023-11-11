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
	
	let story0 = "You see a fork in the road"
	
	override func viewDidLoad() {
		super.viewDidLoad()
		updateUI()
	}

	@IBAction func choiceMade(_ sender: UIButton) {
		
		
		updateUI()
	}
	
	func updateUI() {
		storyLabel.text = story0
		choice1Button.setTitle("Take a left", for: .normal)
		choice2Button.setTitle("Take a right", for: .normal)
	}
	
}

