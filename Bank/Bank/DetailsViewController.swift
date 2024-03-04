//
//  DetailsViewController.swift
//  StudentTask
//
//  Created by Nada Alshaibani on 03/03/2024.
//

import UIKit
import SnapKit

class DetailsViewController: UIViewController {
    var studentProfile: StudentProfilePage?

    let studentNameLabel = UILabel()
    let studentGpaLabel = UILabel()
    let studentImageView = UIImageView()


    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
        setupLayout()
        configureWithBankAccount()
        // Do any additional setup after loading the view.
    }
    
        private func setupViews() {
            view.backgroundColor = .white

            studentNameLabel.font = .systemFont(ofSize: 16, weight: .medium)
            studentGpaLabel.font = .systemFont(ofSize: 16, weight: .medium)

            view.addSubview(studentNameLabel)
            view.addSubview(studentGpaLabel)
            view.addSubview(studentImageView)
        }
        

        private func setupLayout() {
            studentImageView.snp.makeConstraints { make in
                    make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
                    make.centerX.equalToSuperview()
                    make.width.height.equalTo(100)  // Example size, adjust as needed
                }

                studentNameLabel.snp.makeConstraints { make in
                    make.top.equalTo(studentImageView.snp.bottom).offset(20)
                    make.centerX.equalToSuperview()
                }

                studentGpaLabel.snp.makeConstraints { make in
                    make.top.equalTo(studentNameLabel.snp.bottom).offset(20)
                    make.centerX.equalToSuperview()
                }
            }
        

        private func configureWithBankAccount() {
            studentNameLabel.text = "Student Name: \(studentProfile?.studentName ?? "N/A")"
            studentGpaLabel.text = "GPA: \(studentProfile?.studentGpa ?? 0.0)"
            studentImageView.image = UIImage(named: studentProfile?.studentImage ?? "image")
            }
        }
    


