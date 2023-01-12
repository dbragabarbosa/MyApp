//
//  ViewController.swift
//  MyApp
//
//  Created by Daniel Braga Barbosa on 09/01/23.
//

import UIKit

//class ViewController: UIViewController {
class ViewController : UITableViewController {

    var count = 0
    
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
//            if item.hasPrefix("nssl")   // encontra os arquivos que começam com "nssl"
            if item.hasPrefix("Aber")
            {
                // se chegou aqui é pq this is a picture to load!
                pictures.append(item) //
            }
        }
        print(pictures)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Imagem", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    



}

