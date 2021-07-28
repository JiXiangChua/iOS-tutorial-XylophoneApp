//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation //Audio Visual Foundation Module - to interact with the audio hardware.

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

        override func viewDidLoad() {
            super.viewDidLoad()
        }


    @IBAction func keyPressed(_ sender: UIButton) {
        //print("I got pressed")
        //print(sender) will print out the information about the button pressed.
        //print(sender.backgroundColor) to access the button pressed background color
        //print(sender.currentTitle) // this will get the title of the button pressed.
        
        playSound(soundName:sender.currentTitle! ) //calls the play sound function.
        //The sender.currentTitle has a data type call an optional string
        //So we have to check that all our buttons linked to this IBAction must have a title
        //the ! means that dont worry, we've checked and its always going to have a title
        
        //Bonus part
        //Reduces the sender's (the button that got pressed) opacity to half.
          sender.alpha = 0.5
        print("\(sender.currentTitle!) Start")

          //Code should execute after 0.2 second delay.
          DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
              //Bring's sender's opacity back up to fully opaque.
              sender.alpha = 1.0
            print("\(sender.currentTitle!) End")
          }
        
    }
    
    func playSound(soundName: String) {
            let url = Bundle.main.url(forResource: soundName, withExtension: "wav") //location of the C.wav file in our project
            player = try! AVAudioPlayer(contentsOf: url!) //put the music file in our player
            player.play() //play the sound.
                    
        }

//From stackoverflow and the relevant description of the code we got online.
//    func playSound() {
//        guard let url = Bundle.main.url(forResource: "C", withExtension: "wav") else { return }
//        //Bundle - A representation of the code and resources stored in a bundle directory on disk
//        //Creating a constant called url, which is looking for a resource code, C.wav, in all the resources
//
//        do {
//            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
//            //AVAudioSession -
//            //the .playback function states that The category for playing recorded music or other sounds that are central to the successful use of your app.
//            //So when your user is on silent mode, the music will still play through becuz its successful use of the app.
//            try AVAudioSession.sharedInstance().setActive(true)
//
//            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
//            //tells the audio player that the file that we want to play is C.wav which is declared in the url constant
//
//            guard let player = player else { return }
//
//            player.play() //play the audio
//
//        } catch let error {
//            //if there is error, print out the error.
//            print(error.localizedDescription)
//        }
//    }
    

}

