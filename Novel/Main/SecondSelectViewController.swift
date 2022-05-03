//
//  SecondSelectViewController.swift
//  Novel
//
//  Created by Galina Bolganova on 02.05.2022.
//

import UIKit

class SecondSelectViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    let runImage: UIImage = UIImage(named: " background_run")!
    let hikeImage: UIImage = UIImage(named: "background_hike")!
    let walkImage: UIImage = UIImage(named: "background_walk")!
    let filmImage: UIImage = UIImage(named: "background_film")!
    let hellowenImage: UIImage = UIImage(named: "background_hellowen")!
    let suitsImage: UIImage = UIImage(named: "background_suits")!



    var current: DialogOne?
    var someInts: [DialogOne] = []

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerFirstLabel: UIButton!
    
    @IBOutlet weak var answerSecondLabel: UIButton!
    var type: Int?

    @IBOutlet weak var labelText: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
         someInts = [
            DialogOne(number: 4, question: "Может, пойдем домой?..", firstAnswer: (answer: "Да, и посмотрим фильм", next: 7), secondAnswer: (answer: "Да, и отпразднуем Хеллоуин", next: 8), image: runImage, haveTwoAnswers: true),
            DialogOne(number: 5, question: "Как уютно... Но уже темнеет.", firstAnswer: (answer: "Пойдем домой и посмотрим фильм", next: 7), secondAnswer: (answer: "Пойдем домой и отпразнуем Хэллоуин", next: 8), image: hikeImage, haveTwoAnswers: true),
            DialogOne(number: 6, question: "Тебе грустно... Пойдем домой?", firstAnswer: (answer: "Может, посмотрим фильм?", next: 7), secondAnswer: (answer: "Да, и отпразднуем Хеллоуин", next: 8), image: walkImage, haveTwoAnswers: true),
            DialogOne(number: 7, question: "Как тебе фильм?", firstAnswer: (answer: "Мне понравился!", next: 9), secondAnswer: (answer: "Не очень...", next: 10), image: filmImage, haveTwoAnswers: true),
            DialogOne(number: 8, question: "Получается очень красиво!", firstAnswer: (answer: "Да! Может, посмотрим фильм?", next: 7), secondAnswer: (answer: "Да! Давай сделаем костюмы!", next: 11), image: hellowenImage, haveTwoAnswers: true),
            DialogOne(number: 9, question: "Отлично! А теперь пора спать...", firstAnswer: (answer: "Да, уже поздно...", next: 14), secondAnswer: nil, image: filmImage, haveTwoAnswers: false),
            DialogOne(number: 10, question: "Жаль... Тогда пойдем спать?", firstAnswer: (answer: "Да, уже поздно...", next: 14), secondAnswer: nil, image: filmImage, haveTwoAnswers: false),
            DialogOne(number: 11, question: "Мне нравится твой костюм.", firstAnswer: (answer: "Твой тоже очень красивый!", next: 12), secondAnswer: (answer: "А мне, если честно, не нравится твой...", next: 13), image: suitsImage, haveTwoAnswers: true),
            DialogOne(number: 12, question: "Спасибо! Ну, пойдем спать?", firstAnswer: (answer: "Да, уже поздно...", next: 14), secondAnswer: nil, image: filmImage, haveTwoAnswers: false),
            DialogOne(number: 13, question: "Ничего, я не в обиде. Пойдем спать?", firstAnswer: (answer: "Да, уже поздно...", next: 14), secondAnswer: nil, image: filmImage, haveTwoAnswers: false),
        ]
         current = someInts.first(where: { $0.number == type
            
        })
        imageView.image = current!.image
        questionLabel.text = current!.question
        answerFirstLabel.setTitle(current!.firstAnswer.answer ,for: .normal)
        if (current?.haveTwoAnswers == true)
        {
            answerSecondLabel.isHidden = false

            answerSecondLabel.setTitle(current!.secondAnswer!.answer, for: .normal)}
        else{
            answerSecondLabel.isHidden = true
        }

        
    }

    @IBAction func onFirstButtonTab(_ sender: Any) {
        type = current?.firstAnswer.next
        navigateToNext()

    }
    
    @IBAction func onSecondButtonTab(_ sender: Any) {
        type = current?.secondAnswer!.next
        navigateToNext()
    }
    
    func navigateToNext() {
        if (type == 14){
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let initialVC = sb.instantiateViewController(withIdentifier: "EndGameViewController")
            self.present(initialVC, animated: false, completion: nil)
        }
        else{
            viewDidLoad()
        }
    }
}
