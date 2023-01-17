//
//  DetailViewController.swift
//  MyApp
//
//  Created by Daniel Braga Barbosa on 12/01/23.
//

import UIKit

class DetailViewController: UIViewController
{

    @IBOutlet var imageView: UIImageView!
    
    var selectedImage: String?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let imageToLoad = selectedImage
        {
            imageView.image = UIImage(named: imageToLoad)  // carrega a imagem selecionada em uma nova tela
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
