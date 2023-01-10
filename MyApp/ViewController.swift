//
//  ViewController.swift
//  MyApp
//
//  Created by Daniel Braga Barbosa on 09/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    var pictures = [String]()  // esse array de strings será criado quando a tela do ViewController for criada e vai existir enquando a tela também existir

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let fm = FileManager.default  // tipo de dado que me permite trabalhar com o sistema de arquivos
        let path = Bundle.main.resourcePath!  // Bundle é o diretório contendo o programa compilado e todos os seus bens, ou seja, essa linha me diz onde posso encontrar as imagens que adicionei ao meu aplicativo
        let items = try! fm.contentsOfDirectory(atPath: path)  // essa constante será um array de strings contendo os nomes dos arquivos
        
        for item in items
        {
            if item.hasPrefix("nssl")  // encontra os arquivos que começam com "nssl"
            {
                // se chegou aqui é pq this is a picture to load!
                pictures.append(item) //
            }
        }
        print(pictures)
    }
    



}

