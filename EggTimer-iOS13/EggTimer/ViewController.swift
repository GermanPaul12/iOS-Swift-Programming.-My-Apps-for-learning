//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?
    //let eggTimes = ["Soft": 300.0, "Medium": 420.0, "Hard": 720.0]
    let eggTimes = ["Soft": 3.0, "Medium": 5.0, "Hard": 10.0]
    var timer = Timer()
    @IBOutlet weak var textLabel: UILabel!

    @IBOutlet weak var progressBar: UIProgressView!
    @IBAction func hardnessSelected(_ sender: UIButton) {
        var counter = eggTimes[sender.currentTitle!]!
        var progressPercent = Float(0)
        progressBar.progress = Float(progressPercent)
        let progressEachSecond = Float(1.0/counter)
        textLabel.text = sender.currentTitle!
        timer.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [self] (Timer) in
            if counter > 0 {
                counter -= 1
                progressPercent += progressEachSecond
                progressBar.progress = Float(progressPercent)
            } else {
                timer.invalidate()
                textLabel.text = "Done."
                playSound()
            }
        }
    }
    func playSound() {
        let url = Bundle.main.url(forResource: "alarm_sound_for_mama", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
        
    }
}
