import UIKit

class ViewController: UIViewController {

    // 6 adet label'i IBOutlet olarak tanımlıyoruz
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    
    // Butona tıklandığında çalışacak fonksiyon
    @IBAction func generateNumbers(_ sender: UIButton) {
        // Rastgele sayılar üret
        let numbers = generateRandomNumbers()
        
        // UILabel'lere bu sayıları yerleştir
        label1.text = "\(numbers[0])"
        label2.text = "\(numbers[1])"
        label3.text = "\(numbers[2])"
        label4.text = "\(numbers[3])"
        label5.text = "\(numbers[4])"
        label6.text = "\(numbers[5])"
    }
    
    // 1'den 49'a kadar rastgele 6 sayı üreten fonksiyon
    func generateRandomNumbers() -> [Int] {
        var numbers = Set<Int>()
        
        // Set kullanarak tekrarları engelliyoruz
        while numbers.count < 6 {
            let randomNumber = Int.random(in: 1...49)
            numbers.insert(randomNumber)
        }
        
        // Set'i diziye çeviriyoruz
        return Array(numbers).sorted()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
