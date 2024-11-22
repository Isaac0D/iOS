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
    
    @IBOutlet weak var botonIrCartas: UIButton!
    
    
    var player : AVPlayer!
    var avpController = AVPlayerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startVideo()
    }
    
    func startVideo(){
        
        let videoURL = URL(fileURLWithPath: Bundle.main.path(forResource: "IAmClancy", ofType: "mp4")!)
        player = AVPlayer(url: videoURL)
        
        // Configurar el AVPlayerViewController
        avpController.player = player
        
        // Ajustar el tamaño del AVPlayerViewController para que se ajuste a tu UIView
        avpController.view.frame = videoView.bounds
        
        // Agregar el AVPlayerViewController como hijo del controlador actual
        addChild(avpController)
        
        // Agregar la vista del AVPlayerViewController como subvista de tu UIView
        videoView.addSubview(avpController.view)
        
        // Notificar al AVPlayerViewController que ha sido agregado
        avpController.didMove(toParent: self)
        
        player.play()
    }
    
    @IBAction func irAPaginaCartas() {
            // URL que deseas abrir en el navegador
            if let url = URL(string: "http://dmaorg.info/found/15398642_14/clancy.html") {
                // Verifica si la URL es válida
                if UIApplication.shared.canOpenURL(url) {
                    // Abre la URL en Safari
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                } else {
                    // Si no se puede abrir la URL, muestra un mensaje de error o realiza alguna acción
                    print("La URL no es válida.")
                }
            }
        }

}
