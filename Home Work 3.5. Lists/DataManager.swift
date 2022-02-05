//
//  DataManager.swift
//  Home Work 3.5. Lists
//
//  Created by Ирина on 03.02.2022.
//


class DataManager {
    static let shared = DataManager()
    
    let names = [
        "John",  "Michael",
        "Barbara", "Patricia",
        "Thomas", "Olivia",
        "Emma", "Ava",
        "Sophia", "Isabella",
        "Charlotte", "Amelia",
        "Mia"
        ]
    
    let surnames = [
        "Smith", "Williams",
        "Brown", "Miller",
        "Anderson", "Jones",
        "Campbell", "Carey",
        "Carrington","Carroll",
        "Carter", "Benson",
        "Fleming"
                    ]
    
    let phones = [
        "8898823457", "1738475085",
         "8437857304", "8917478956",
         "8765488234", "8943742515",
         "8732647328", "6666728393",
         "5364562363", "9999888263",
         "8437566626", "9900983746",
         "6473858493"
        ]
    
    let emails = [
        "sdzk@mai.ru", "rrrr@gmail.com",
        "ffffd@mail.ru", "pppp@mail.com",
        "mmmm@mail.ru", "rrer@gmail.com",
        "ttftr@mail.ru", "tte45@gmail.com",
        "nswhb445@mail.com", "yuhs31@mail.ru",
        "ufge@gmail.com", "opsJ6@MAIL.ru",
        "ffcrdr@mail.com"
    ]
    
    private init() {}
}

