//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import  AVFoundation

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var player: AVAudioPlayer?
    func dimUIButton(_ sender : UIButton) {
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
             //Bring's sender's opacity back up to fully opaque.
             sender.alpha = 1.0
         }
    }
    @IBAction func keyPressedC(_ sender: UIButton) {
        dimUIButton(sender)
        playSound("C")
    }
    
    @IBAction func keyPressedD(_ sender: UIButton) {
        dimUIButton(sender)
        playSound("D")
    }
    
    @IBAction func keyPressedE(_ sender: UIButton) {
        dimUIButton(sender)
        playSound("E")
    }
    
    @IBAction func keyPressedF(_ sender: UIButton) {
        dimUIButton(sender)
        playSound("F")
    }
    
    @IBAction func keyPressedG(_ sender: UIButton) {
        dimUIButton(sender)
        playSound("G")
    }
    
    @IBAction func keyPressedA(_ sender: UIButton) {
        dimUIButton(sender)
        playSound("A")
    }
    
    @IBAction func keyPressedB(_ sender: UIButton) {
        dimUIButton(sender)
        playSound("B")
    }
    func playSound(_ sound: String) {
        guard let url = Bundle.main.url(forResource: sound, withExtension: "wav") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            
            guard let player = player else { return }

            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }


    

}

