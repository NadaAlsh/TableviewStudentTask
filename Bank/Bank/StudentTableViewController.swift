//
//  ViewController.swift
//  Bank
//
//  Created by Nada Alshaibani on 03/03/2024.
//

import UIKit

class StudentTableViewController: UITableViewController {
    
    var studentProfile: [StudentProfilePage] = [StudentProfilePage(studentName: "Aseel", studentGpa: 3.9, studentImage: "Aseel"), StudentProfilePage(studentName: "Razan", studentGpa: 3.9, studentImage: "Razan"),
                                                StudentProfilePage(studentName: "Nada", studentGpa: 4.0, studentImage: "Nada")]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentProfile.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let student = studentProfile[indexPath.row]
        
        cell.textLabel?.text = "Student: \(student.studentName), GPA: \(student.studentGpa)"
        cell.imageView?.image = UIImage(named: student.studentImage)
        
        return cell
        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = DetailsViewController()
        
        let selectedStudent = studentProfile[indexPath.row]
        detailVC.studentProfile = selectedStudent
        
        navigationController?.pushViewController(detailVC, animated: true)
    }
    
}
