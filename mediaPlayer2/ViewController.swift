//
//  ViewController.swift
//  mediaPlayer2
//
//

import UIKit
import AVKit
import AVFoundation
import MediaPlayer
import AudioToolbox

class ViewController: UIViewController,AVPlayerViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        //https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4
    }
    @IBAction func buttonPlayVideo(_ sender: Any) {
        let videoURL = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")
        let player = AVPlayer(url: videoURL!)
        let playervc = AVPlayerViewController()
        playervc.delegate = self
        playervc.player = player
        self.present(playervc, animated: true) {
            playervc.player!.play()
        }
    }
    

}

