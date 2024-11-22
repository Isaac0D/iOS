//
//  ViewControllerVideo.swift
//  proyectoFinalTOP
//
//  Created by alumno on 11/22/24.
//

import UIKit
import AVFoundation
import AVKit

class ViewControllerVideo: UIViewController {
    
    @IBOutlet weak var videoView: UIView!
    
    var player : AVPlayer!
    var avpController = AVPlayerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startVideo()
    }
    
    func startVideo(){
        let url = URL(string: "https://firebasestorage.googleapis.com/v0/b/gameofchats-762ca.appspot.com/o/message_movies%2F12323439-9729-4941-BA07-2BAE970967C7.mov?alt=media&token=3e37a093-3bc8-410f-84d3-38332af9c726")
        
        
        player = AVPlayer(url: url!)
        
        avpController.player = player
        avpController.view.frame.size.height = videoView.frame.size.height
        avpController.view.frame.size.width = videoView.frame.size.width
        self.videoView.addSubview(avpController.view)
        player.play()
    }

}
