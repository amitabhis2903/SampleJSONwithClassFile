//
//  ViewController.swift
//  SampleJSONwithClassFile
//
//  Created by Ammy Pandey on 31/07/17.
//  Copyright © 2017 Ammy Pandey. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    @IBOutlet weak var mylabel: UILabel!
    var myJSON: JSON = nil
    var act: [Actor] = []
    //var a = RootClass.self
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        Alamofire.request( "http://microblogging.wingnity.com/JSONParsingTutorial/jsonActors").responseJSON { (response) in
           // print(response)
            if let json = response.result.value as? RootClass{
               // print(json)
                self.myJSON = JSON(json)
                
                for i in 0..<self.myJSON.count{
                    let myAct = Actor(fromJson: self.myJSON[i])
                    self.act.append(myAct)
                }
                //print(self.act)
              
            }
    }
        
        
    }


}

