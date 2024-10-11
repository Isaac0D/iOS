//
//  controlador_pantalla_de_colecion.swift
//  boceto_2
//
//  Created by Jadzia Gallegos on 06/10/24.
//

import Foundation
import UIKit

class ControladorPantallaColeccion: UICollectionViewController{
    private let identificador_de_celda = "Celda"
    private let itemsPerRow: CGFloat = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //AQui cargamos la celda donde gaurdaremos y repetiremos con la infromacion
        //collectionView!.register(OpcionASeleccionarCelda.self, forCellWithReuseIdentifier: identificador_de_celda)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    /*override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // Regresa el numero de secciones
        return 10
    }*/
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celda = collectionView.dequeueReusableCell(withReuseIdentifier: identificador_de_celda, for: indexPath) as! OpcionASeleccionarCelda
        
        // celda.backgroundColor = .green
        celda.etiqueta.text = "\(indexPath)"
        
    
        return celda
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Selecciono el \(indexPath.row)")
    }
    
}

/*
extension ControladorPantallaColeccion: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let paddingSpace = (itemsPerRow)
        
        let availableWidth: CGFloat = 300
        let widthPeritem: CGFloat = 300
        
        return CGSize(width: availableWidth, height: widthPeritem)
    }
    
    
}
*/
