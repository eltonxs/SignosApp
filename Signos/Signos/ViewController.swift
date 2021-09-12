//
//  ViewController.swift
//  Signos
//
//  Created by Elton Souza on 31/08/21.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos: [String] = []
    var significadoSignos: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sagitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peíxes")
    
        significadoSignos.append("Os arianos costumam ser individualistas e espontâneos!")
        significadoSignos.append("Os taurinos são esforçados e práticos!")
        significadoSignos.append("Os geminianos são extrovertidos e amigões!")
        significadoSignos.append("A principal marca dos cancerianos é a sensibilidade e o carinho.")
        significadoSignos.append("Os leoninos são vaidosos e confiantes.")
        significadoSignos.append("Organizados e analíticos: esses são os virginianos.")
        significadoSignos.append("Clichê dizer, mas o equilíbrio e a justiça definem os librianos.")
        significadoSignos.append("Atraente e intenso: esse é o escorpiano.")
        significadoSignos.append("Independência e liberdade marcam os sagitarianos.")
        significadoSignos.append("A responsabilidade é o ponto forte do capricorniano.")
        significadoSignos.append("Os aquarianos são amantes dos desafios e da liberdade!")
        significadoSignos.append("Emocionais e espiritualizados, esses são os piscianos.")
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celulaReuso = "celulaReuso"
        
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        
        celula.textLabel?.text = signos[ indexPath.row ]
        
        return celula
        
}
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //essa linha abaixo serve para desmarcar quando selecionar algum item no tableview
        tableView.deselectRow(at: indexPath, animated: true)
        let alertaController = UIAlertController(title: "significa dos Signos", message: significadoSignos[ indexPath.row ], preferredStyle: .alert)
        
        let acaoConfirmar = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertaController.addAction(acaoConfirmar)
        
        present(alertaController, animated: true, completion: nil)
        
        
        //print( significadoSignos[indexPath.row])
        
        
    }
    
}
