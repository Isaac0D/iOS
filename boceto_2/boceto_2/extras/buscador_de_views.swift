
//
//  buscador_de_views.swift
//  boceto_2
//
//  Created by Jadzia Gallegos on 06/10/24.
//

import UIKit

extension UIView {
    func buscar_vista(restorationID: String) -> Any?{
        for vista in self.subviews{
            if vista.restorationIdentifier == restorationID{
                return vista
            }
        }
        
        return nil
    }
}
