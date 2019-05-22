import UIKit

struct Book {
    
    var nombre: String
    var publicacion: Int?
    init?(nombre:String,publicacion:Int?){
        
        self.nombre = nombre
        self.publicacion = publicacion
        
    }
    
}

let firstHarryPotter = Book(nombre: "Harry Potter ant the Sorcerer's Stone", publicacion: 1997)

let secondHarryPotter  = Book(nombre: "Harry Potter and the Chamber of Secrets", publicacion: 1998)

let thirdHarryPotter = Book(nombre: "Harry Potter and the Prisioner of Azkaban", publicacion: 2000)

let unannoncedBook = Book(nombre: "Rebels and Lions", publicacion: nil)

let books = [firstHarryPotter, secondHarryPotter,thirdHarryPotter,unannoncedBook]

for item in books{
    if let constant = item?.publicacion{
            print(constant)
    }
    
}

