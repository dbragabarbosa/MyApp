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
    
    var numImagemSelecionada = 0
    var numTotalDeImagens = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        title = "Minha foto"
        title = selectedImage
//        title = "Imagem \(numImagemSelecionada) de \(numTotalDeImagens)"
        
        navigationItem.largeTitleDisplayMode = .never
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        // the action parameter is saying "when you're tapped, call the shareTapped() method," and the target parameter tells the button that the method belongs to the current view controller – self.
        
        if let imageToLoad = selectedImage
        {
            imageView.image = UIImage(named: imageToLoad)  // carrega a imagem selecionada em uma nova tela
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    
    @objc func shareTapped()
    {
        guard let image = imageView.image?.jpegData(compressionQuality: 0.8) else {
            print("No image found")
            return
        }

        let vc = UIActivityViewController(activityItems: [image], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
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
