//
//  ViewController.swift
//  primenumber_check
//
//  Created by D7703_26 on 2018. 3. 29..
//  Copyright © 2018년 dit.ac.kr. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    
    
    @IBOutlet weak var txt: UITextField!
    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        txt.delegate = self
        txt.placeholder = "숫자입력"
        //텍스트필드에 숫자입력 나오게
    
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func reset(_ sender: Any) {
        txt.text = ""
        lbl.text = ""
    }
    //텍스트, 레이블을 리셋
    
 
    @IBAction func bt(_ sender: Any) {

        
        let number = Int(txt.text!)
        var isPrime = true
        
        if number == 1{
            isPrime = false
            
        }
        //넘버에 텍스트필드에 있는 정수형으로 저장한다
        //1은 소수가 아니기 때문 펄스
        if number != 1 && number != 2{
            for i in 2..<(number!) {
                if (number!) % i == 0{
                    isPrime = false
                }
            }
        }
        //넘버가 1이나 2가 아닐때 포문을 넘버까지 돌려라 그리고 넘버를 i로 나눴을때 0이면 거짓
        if isPrime == true{
            lbl.text = ("소수이다.")
        }else{
            lbl.text = ("소수가아니다.")
        }
        //
        
        
        txt.resignFirstResponder()
        //커서가 풀리게 해주는 이벤트
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txt.resignFirstResponder()
        return true
    }
    
}

