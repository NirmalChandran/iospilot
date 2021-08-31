//
//  secondViewController.swift
//  cell
//
//  Created by Nirmal Chandran on 26/08/21.
//

import UIKit

class secondViewController: UIViewController {
    
    let datepick = UIDatePicker()
    let datetoolBar = UIToolbar()
    let timePickerView = UIDatePicker()
    let timetoolBar = UIToolbar()
    
    
   var mainImage = UIImageView()
    
    
   
    
    lazy var lab: UILabel = {
        var lab = UILabel()
        lab.text = "Receipt Date"
        lab.textAlignment = .left
        lab.translatesAutoresizingMaskIntoConstraints = false
        lab.font = UIFont.systemFont(ofSize: 15)
        return lab
    }()
    
    lazy var lab1: UILabel = {
        var lab1 = UILabel()
        lab1.text = "Unstuffing Date"
        lab1.textAlignment = .left
        lab1.translatesAutoresizingMaskIntoConstraints = false
        lab1.font = UIFont.systemFont(ofSize: 15)
        return lab1
    }()
    
    lazy var lab2: UILabel = {
        var lab2 = UILabel()
        lab2.text = "Container"
        lab2.textAlignment = .left
        lab2.translatesAutoresizingMaskIntoConstraints = false
        lab2.font = UIFont.systemFont(ofSize: 15)
        return lab2
    }()
    
    lazy var lab3: UILabel = {
        var lab3 = UILabel()
        lab3.text = "Unstuff BY"
        lab3.textAlignment = .left
        lab3.translatesAutoresizingMaskIntoConstraints = false
        lab3.font = UIFont.systemFont(ofSize: 15)
        return lab3
    }()
    lazy var lab4: UILabel = {
        var lab4 = UILabel()
        lab4.text = "vehicle Type "
        lab4.textAlignment = .left
        lab4.translatesAutoresizingMaskIntoConstraints = false
        lab4.font = UIFont.systemFont(ofSize: 15)
        return lab4
    }()
    lazy var lab5: UILabel = {
        var lab5 = UILabel()
        lab5.text = "Container/vehicle Type"
        lab5.textAlignment = .left
        lab5.translatesAutoresizingMaskIntoConstraints = false
        lab5.font = UIFont.systemFont(ofSize: 15)
        return lab5
    }()
    
    lazy var lab6: UILabel = {
        var lab6 = UILabel()
        lab6.text = "Start Time"
        lab6.textAlignment = .left
        lab6.translatesAutoresizingMaskIntoConstraints = false
        lab6.font = UIFont.systemFont(ofSize: 15)
        return lab6
    }()
    
    lazy var lab7: UILabel = {
        var lab7 = UILabel()
        lab7.text = "Permit No"
        lab7.textAlignment = .left
        lab7.translatesAutoresizingMaskIntoConstraints = false
        lab7.font = UIFont.systemFont(ofSize: 15)
        return lab7
    }()
    
    
    lazy var text: UITextField = {
        var  text = UITextField()
        text.backgroundColor = .systemGray5
       // text.alpha = 0.8
        text.placeholder = "Enter The Receipt Date"
        text.textAlignment = .left
        text.font = UIFont.systemFont(ofSize: 14)
        text.clipsToBounds = true
        text.layer.cornerRadius = 8
        text.translatesAutoresizingMaskIntoConstraints = false
        text.inputView = datepick
        text.inputAccessoryView = datetoolBar
        return text
    }()
    
    @objc func datedoneTapped(_ sender:UIBarButtonItem) {
           
        
            self.view.endEditing(true)
                   text.resignFirstResponder()
            
            
            
            }
        
        @objc func datecancelTapped(_ sender:UIButton) {
           // self.combotextfield.text = nil
            self.view.endEditing(true)
                   text.resignFirstResponder()
                    self.text.resignFirstResponder()
            
        }
    
    @objc func timepicker(sender: UIDatePicker){
        let timeformatter: DateFormatter = DateFormatter()
        
        // Set date format
        timeformatter.dateFormat = "hh:mm:ss"
        timeformatter.dateStyle = .none
        timeformatter.timeStyle = .short
        
        
        
        // Apply date format
        let selectedTime: String = timeformatter.string(from: timePickerView.date)
        
      //  print("Selected time \(selectedTime)")
        
        text6.text = selectedTime
    }
    
    @objc func dat(sender: UIDatePicker){
        let dateformat = DateFormatter()
        dateformat.dateStyle = .long
        dateformat.timeStyle = .none
        text.text = dateformat.string(from: sender.date)
       // text1.text = dateformat.string(from: sender.date)
        
    }
    
    @objc func timedoneTapped(_ sender:UIBarButtonItem) {
       
    
        self.view.endEditing(true)
               text6.resignFirstResponder()
        
        
        
        }
    
    @objc func timecancelTapped(_ sender:UIButton) {
       // self.combotextfield.text = nil
        self.view.endEditing(true)
               text6.resignFirstResponder()
                self.text6.resignFirstResponder()
        
    }
    
    lazy var text1: UITextField = {
        var  text1 = UITextField(frame: CGRect(x: 10, y: 210, width: view.frame.width/1.06, height: 48))
        text1.backgroundColor = .systemGray5
        text1.placeholder = "Enter The Unstuffing Date"
        text1.font = UIFont.systemFont(ofSize: 14)
        text1.textAlignment = .left
        text1.clipsToBounds = true
        text1.layer.cornerRadius = 8
        text1.translatesAutoresizingMaskIntoConstraints = false
        text1.inputView = datepick
        text1.inputAccessoryView = datetoolBar
        return text1
    }()

    lazy var text2: UITextField = {
        var  text2 = UITextField(frame: CGRect(x: 10, y: 190, width: view.frame.width/1.06, height: 90))
        text2.backgroundColor = .systemGray5
        text2.placeholder = "Container"
        text2.font = UIFont.systemFont(ofSize: 14)
        text2.textAlignment = .left
        text2.clipsToBounds = true
        text2.layer.cornerRadius = 8
        text2.translatesAutoresizingMaskIntoConstraints = false
        return text2
    }()

    lazy var text3: UITextField = {
        var  text3 = UITextField(frame: CGRect(x: 10, y: 210, width: view.frame.width/1.06, height: 110))
        text3.backgroundColor = .systemGray5
        text3.placeholder = "Unstuff By"
        text3.font = UIFont.systemFont(ofSize: 14)
        text3.textAlignment = .left
        text3.clipsToBounds = true
        text3.layer.cornerRadius = 8
        text3.translatesAutoresizingMaskIntoConstraints = false
        return text3
    }()

    lazy var text4: UITextField = {
        var  text4 = UITextField(frame: CGRect(x: 10, y: 230, width: view.frame.width/1.06, height: 130))
        text4.backgroundColor = .systemGray5
        text4.placeholder = "Vehicle Type"
        text4.font = UIFont.systemFont(ofSize: 14)
        text4.textAlignment = .left
        text4.clipsToBounds = true
        text4.layer.cornerRadius = 8
        text4.translatesAutoresizingMaskIntoConstraints = false
        return text4
    }()

    lazy var text5: UITextField = {
        var  text5 = UITextField(frame: CGRect(x: 10, y: 250, width: view.frame.width/1.06, height: 150))
        text5.backgroundColor = .systemGray5
        text5.placeholder = "Container/Vehicle Type"
        text5.font = UIFont.systemFont(ofSize: 14)
        text5.textAlignment = .left
        text5.clipsToBounds = true
        text5.layer.cornerRadius = 8
        text5.translatesAutoresizingMaskIntoConstraints = false
        return text5
    }()

    lazy var text6: UITextField = {
        var  text6 = UITextField(frame: CGRect(x: 10, y: 270, width: view.frame.width/1.06, height: 170))
        text6.backgroundColor = .systemGray5
        text6.placeholder = "Start Time"
        text6.font = UIFont.systemFont(ofSize: 14)
        text6.textAlignment = .left
        text6.clipsToBounds = true
        text6.layer.cornerRadius = 8
        text6.translatesAutoresizingMaskIntoConstraints = false
        text6.inputView = timePickerView
        text6.inputAccessoryView = timetoolBar
        return text6
    }()

    lazy var text7: UITextField = {
        var  text7 = UITextField(frame: CGRect(x: 10, y: 290, width: view.frame.width/1.06, height: 190))
        text7.backgroundColor = .systemGray5
        text7.placeholder = "Permit No"
        text7.font = UIFont.systemFont(ofSize: 14)
        text7.textAlignment = .left
        text7.clipsToBounds = true
        text7.layer.cornerRadius = 8
        text7.translatesAutoresizingMaskIntoConstraints = false
        return text7
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Simplr"
        let gradient = CAGradientLayer()

        gradient.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        gradient.colors = [UIColor.white.cgColor, UIColor.black.cgColor]

        view.layer.insertSublayer(gradient, at: 0)
        
       // view.addSubview(mainImage)
        mainImage.frame = self.view.bounds
        mainImage.image = #imageLiteral(resourceName: "Back")
        mainImage.alpha = 0.5
        view.backgroundColor = .systemGray6
        view.addSubview(text)
        view.addSubview(text1)
        view.addSubview(text2)
        view.addSubview(text3)
        view.addSubview(text4)
        view.addSubview(text5)
        view.addSubview(text6)
        view.addSubview(text7)
        
        view.addSubview(lab)
        view.addSubview(lab1)
        view.addSubview(lab2)
        view.addSubview(lab3)
        view.addSubview(lab4)
        view.addSubview(lab5)
        view.addSubview(lab6)
        view.addSubview(lab7)
        
        timePickerView.timeZone = NSTimeZone.local
        timePickerView.datePickerMode = .time
        timePickerView.preferredDatePickerStyle = .wheels
        timetoolBar.barStyle = UIBarStyle.default
        timetoolBar.isTranslucent = true
        timetoolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action:#selector(timedoneTapped(_:)))
       let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: UIBarButtonItem.Style.plain, target: self, action: #selector(timecancelTapped(_:)))

        timetoolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        timetoolBar.isUserInteractionEnabled = true
        
        
        timePickerView.addTarget(self, action: #selector(timepicker(sender:)), for: .valueChanged)
        
        datepick.datePickerMode = .date
        datepick.preferredDatePickerStyle = .wheels
        
        
        datetoolBar.barStyle = UIBarStyle.default
        datetoolBar.isTranslucent = true
        datetoolBar.sizeToFit()

        let doneButtons = UIBarButtonItem(title: "Done", style: .done, target: self, action:#selector(datedoneTapped(_:)))
       let spaceButtons = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let cancelButtons = UIBarButtonItem(title: "Cancel", style: UIBarButtonItem.Style.plain, target: self, action: #selector(datecancelTapped(_:)))

        datetoolBar.setItems([cancelButtons, spaceButtons, doneButtons], animated: false)
        datetoolBar.isUserInteractionEnabled = true
 
 
 
 
 datepick.addTarget(self, action: #selector(self.dat(sender:)), for: .valueChanged)
        
    
        
        NSLayoutConstraint.activate([lab.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 5),lab.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 15),lab.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -200),lab.heightAnchor.constraint(equalToConstant: 48)])
        
        NSLayoutConstraint.activate([lab1.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 5),lab1.leadingAnchor.constraint(equalTo: self.lab.trailingAnchor, constant: 15),lab1.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),lab1.heightAnchor.constraint(equalToConstant: 48)])
        
        NSLayoutConstraint.activate([lab2.topAnchor.constraint(equalTo: self.text1.bottomAnchor, constant: -5),lab2.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 15),lab2.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -200),lab2.heightAnchor.constraint(equalToConstant: 48)])
        
        NSLayoutConstraint.activate([lab3.topAnchor.constraint(equalTo: self.lab1.bottomAnchor, constant: 40),lab3.leadingAnchor.constraint(equalTo: self.lab2.trailingAnchor, constant: 15),lab3.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),lab3.heightAnchor.constraint(equalToConstant: 48)])
        
        NSLayoutConstraint.activate([lab4.topAnchor.constraint(equalTo: self.text2.bottomAnchor, constant: -5),lab4.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 15),lab4.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -200),lab4.heightAnchor.constraint(equalToConstant: 48)])
        
        NSLayoutConstraint.activate([lab5.topAnchor.constraint(equalTo: self.text3.bottomAnchor, constant: -5),lab5.leadingAnchor.constraint(equalTo: self.lab4.trailingAnchor, constant: 15),lab5.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),lab5.heightAnchor.constraint(equalToConstant: 48)])
        
        NSLayoutConstraint.activate([lab6.topAnchor.constraint(equalTo: self.text4.bottomAnchor, constant: -5),lab6.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 15),lab6.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -200),lab6.heightAnchor.constraint(equalToConstant: 48)])
        
        NSLayoutConstraint.activate([lab7.topAnchor.constraint(equalTo: self.text5.bottomAnchor, constant: -5),lab7.leadingAnchor.constraint(equalTo: self.lab6.trailingAnchor, constant: 15),lab7.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),lab7.heightAnchor.constraint(equalToConstant: 48)])
        
        
        NSLayoutConstraint.activate([text.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 45),text.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10),text.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -200),text.heightAnchor.constraint(equalToConstant: 52)])
        
        NSLayoutConstraint.activate([text1.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 45),text1.leadingAnchor.constraint(equalTo: self.text.trailingAnchor, constant: 10),text1.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),text1.heightAnchor.constraint(equalToConstant: 52)])
        
        NSLayoutConstraint.activate([text2.topAnchor.constraint(equalTo: self.text.bottomAnchor, constant: 30),text2.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10),text2.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -200),text2.heightAnchor.constraint(equalToConstant: 52)])
        
        NSLayoutConstraint.activate([text3.topAnchor.constraint(equalTo: self.text1.bottomAnchor, constant: 30),text3.leadingAnchor.constraint(equalTo: self.text2.trailingAnchor, constant: 10),text3.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),text3.heightAnchor.constraint(equalToConstant: 52)])
        
        NSLayoutConstraint.activate([text4.topAnchor.constraint(equalTo: self.text2.bottomAnchor, constant: 30),text4.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10),text4.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -200),text4.heightAnchor.constraint(equalToConstant: 52)])
        
        NSLayoutConstraint.activate([text5.topAnchor.constraint(equalTo: self.text3.bottomAnchor, constant: 30),text5.leadingAnchor.constraint(equalTo: self.text4.trailingAnchor, constant: 10),text5.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),text5.heightAnchor.constraint(equalToConstant: 52)])
        
        NSLayoutConstraint.activate([text6.topAnchor.constraint(equalTo: self.text4.bottomAnchor, constant: 30),text6.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10),text6.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -200),text6.heightAnchor.constraint(equalToConstant: 52)])
        
        NSLayoutConstraint.activate([text7.topAnchor.constraint(equalTo: self.text5.bottomAnchor, constant: 30),text7.leadingAnchor.constraint(equalTo: self.text6.trailingAnchor, constant: 10),text7.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),text7.heightAnchor.constraint(equalToConstant: 52)])
        
        
        
        
        
        
    }
    

        
    }
    




