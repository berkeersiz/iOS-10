//
//  ViewController.swift
//  11-DarkModeApp
//
//  Created by Berke Ersiz on 23.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        overrideUserInterfaceStyle = .light
        //Kullanicinin ne modunda oldugu onemli degil benim bu viewcontrollerimda hep lightta calissin kodu.
        
    }
    
   /* override func viewWillAppear(_ animated: Bool) {
        let userInterface = traitCollection.userInterfaceStyle
        
        if userInterface == .dark {
            changeButton.tintColor = UIColor.white
        }else{
            changeButton.tintColor = UIColor.blue
        }
       viewdidload ve viewwillappearda yaptigimiz zaman uygulama acikken modeu degistirdigimizde algilamiyor
       onun icin traitcollectiondidchange methodunu kullanacagiz.
    }*/
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userInterface = traitCollection.userInterfaceStyle
        
        if userInterface == .dark {
            changeButton.tintColor = UIColor.white
        }else{
            changeButton.tintColor = UIColor.blue
        }
    }


}
/*eger butun appim benim sectigim mod olsun diyorsak info.plistte user interface style ekleyip dark veya light
yazarsak butun appimizde o kullanşilir.*/

