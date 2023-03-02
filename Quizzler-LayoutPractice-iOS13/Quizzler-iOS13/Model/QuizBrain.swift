//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by German Paul on 02.03.23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [ Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
                 Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
                 Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
                 Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
                 Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
                 Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
                 Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
                 Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
                 Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
                 Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia"),
                 Question(q: "Which programming language is often used for developing web applications?", a: ["Java", "Python", "JavaScript"], correctAnswer: "JavaScript"),
                 Question(q: "What does the acronym CSS stand for in web development?", a: ["Cascading Style Sheets", "Creative Style System", "Computer Style Sheets"], correctAnswer: "Cascading Style Sheets"),
                 Question(q: "Which programming language is commonly used for data analysis and machine learning?", a: ["Java", "Python", "Ruby"], correctAnswer: "Python"),
                 Question(q: "Which programming language was developed by Microsoft?", a: ["Java", "C#", "PHP"], correctAnswer: "C#"),
                 Question(q: "What is Git in programming?", a: ["A version control system", "A programming language", "A type of database"], correctAnswer: "A version control system"),
                 Question(q: "What is an API in programming?", a: ["A set of protocols for building software applications", "A type of database", "A programming language"], correctAnswer: "A set of protocols for building software applications"),
                 Question(q: "Which programming language is often used for developing mobile apps?", a: ["Swift", "Ruby", "Perl"], correctAnswer: "Swift"),
                 Question(q: "What is SpongeBob's best friend's name?", a: ["Patrick", "Squidward", "Mr. Krabs"], correctAnswer: "Patrick"),
                 Question(q: "What is the name of the town where SpongeBob lives?", a: ["Bikini Bottom", "Jellyfish Fields", "Rock Bottom"], correctAnswer: "Bikini Bottom"),
                 Question(q: "What is the name of SpongeBob's pet snail?", a: ["Gary", "Larry", "Barry"], correctAnswer: "Gary"),
                 Question(q: "What is the name of SpongeBob's boss at the Krusty Krab?", a: ["Mr. Krabs", "Plankton", "Squidward"], correctAnswer: "Mr. Krabs"),
                 Question(q: "What is the name of the driving school where SpongeBob and Mrs. Puff teach?", a: ["Mrs. Puff's Boating School", "Sailor School", "Captain's Course"], correctAnswer: "Mrs. Puff's Boating School"),
                 Question(q: "What is the name of the evil villain who constantly tries to steal the Krabby Patty formula?", a: ["Plankton", "Karen", "Man Ray"], correctAnswer: "Plankton"),
                 Question(q: "What is the name of the band that SpongeBob and his friends form?", a: ["The Electric Skates", "The Jellyspotters", "The Krusty Krab Band"], correctAnswer: "The Jellyspotters"),
                 Question(q: "What is the name of the restaurant next to the Krusty Krab?", a: ["The Chum Bucket", "The Shell Shack", "The Salty Spitoon"], correctAnswer: "The Chum Bucket"),
                 Question(q: "What is the name of the tough bouncer at the Salty Spitoon?", a: ["Reg", "Rocky", "Randy"], correctAnswer: "Reg"),
                 Question(q: "What is the name of SpongeBob's superhero alter ego?", a: ["Mermaid Man", "Barnacle Boy", "The Quickster"], correctAnswer: "The Quickster"),
                 Question(q: "What is the name of Squidward's arch-rival?", a: ["Squilliam Fancyson", "Squidly Tentacles", "Squiddy"], correctAnswer: "Squilliam Fancyson"),
                 Question(q: "What is the name of the character who is obsessed with karate and chops everything in sight?", a: ["Sandy Cheeks", "Larry the Lobster", "Tina the Tuna"], correctAnswer: "Sandy Cheeks"),
                 Question(q: "What is the name of the artist who paints Squidward's portrait?", a: ["Fancyson", "Fancypants", "Fancyskins"], correctAnswer: "Fancypants"),
                 Question(q: "What is the name of the restaurant where Squidward becomes a famous chef?", a: ["Le Cafe", "Le Restaurant", "Le Schnook"], correctAnswer: "Le Schnook"),
                 Question(q: "What is the name of the school that Harry Potter attends?", a: ["Hogwarts School of Witchcraft and Wizardry", "Beauxbatons Academy of Magic", "Durmstrang Institute"], correctAnswer: "Hogwarts School of Witchcraft and Wizardry"),
                 Question(q: "What is the name of the game that Harry Potter plays on broomsticks?", a: ["Quidditch", "Bludger", "Snitch"], correctAnswer: "Quidditch"),
                 Question(q: "What is the name of the evil wizard who killed Harry Potter's parents?", a: ["Voldemort", "Grindelwald", "Malfoy"], correctAnswer: "Voldemort"),
                 Question(q: "What is the name of the school that Hermione Granger attended before Hogwarts?", a: ["Beauxbatons Academy of Magic", "Durmstrang Institute", "Ilvermorny School of Witchcraft and Wizardry"], correctAnswer: "Beauxbatons Academy of Magic"),
                 Question(q: "What is the name of the village near Hogwarts?", a: ["Hogsmeade", "Godric's Hollow", "Diagon Alley"], correctAnswer: "Hogsmeade"),
                 Question(q: "What is the name of the giant who befriends Harry Potter?", a: ["Hagrid", "Grawp", "Fang"], correctAnswer: "Hagrid"),
                 Question(q: "What is the name of the magical object that allows the owner to travel through time?", a: ["Time-Turner", "Apparition", "Portkey"], correctAnswer: "Time-Turner"),
                 Question(q: "What is the name of the sport that involves flying on broomsticks and catching a small golden ball?", a: ["Quidditch", "Broom Racing", "Sky Ball"], correctAnswer: "Quidditch"),
                 Question(q: "What is the name of the wizarding prison?", a: ["Azkaban", "Nurmengard", "Gringotts"], correctAnswer: "Azkaban"),
                 Question(q: "What is the name of the three-headed dog that guards the Philosopher's Stone?", a: ["Fluffy", "Fang", "Norbert"], correctAnswer: "Fluffy"),
                 Question(q: "What is the name of the wizarding bank?", a: ["Gringotts", "Wizarding World Bank", "Goblin Bank"], correctAnswer: "Gringotts"),
                 Question(q: "What is the name of the ghost who haunts the Hogwarts castle?", a: ["Nearly Headless Nick", "The Bloody Baron", "The Grey Lady"], correctAnswer: "Nearly Headless Nick"),
                 Question(q: "What is the name of the potion that allows the drinker to transform into someone else?", a: ["Polyjuice Potion", "Veritaserum", "Felix Felicis"], correctAnswer: "Polyjuice Potion"),
                 Question(q: "What is the name of the spell that Harry Potter uses to summon his broomstick?", a: ["Accio", "Alohomora", "Expecto Patronum"], correctAnswer: "Accio"),
                 Question(q: "What is the name of the street where the wizarding pub, The Leaky Cauldron, is located?", a: ["Diagon Alley", "Knockturn Alley", "Charing Cross Road"], correctAnswer: "Diagon Alley"),
                 Question(q: "What is the value of pi?", a: ["3.14", "2.71", "1.62"], correctAnswer: "3.14"),
                 Question(q: "What is the formula for finding the area of a circle?", a: ["pi * r^2", "2 * pi * r", "pi * d"], correctAnswer: "pi * r^2"),
                 Question(q: "What is the Pythagorean theorem?", a: ["a^2 + b^2 = c^2", "a + b + c = 180", "sin^2(x) + cos^2(x) = 1"], correctAnswer: "a^2 + b^2 = c^2"),
                 Question(q: "What is the formula for finding the slope of a line?", a: ["(y2 - y1) / (x2 - x1)", "y = mx + b", "y - y1 = m(x - x1)"], correctAnswer: "(y2 - y1) / (x2 - x1)"),
                 Question(q: "What is the formula for finding the volume of a sphere?", a: ["4/3 * pi * r^3", "pi * r^2 * h", "1/2 * b * h"], correctAnswer: "4/3 * pi * r^3"),
                 Question(q: "What is the formula for finding the sum of an arithmetic series?", a: ["(n/2)(a1 + an)", "n(a1 + an)/2", "(a1 + an)/2"], correctAnswer: "(n/2)(a1 + an)"),
                 Question(q: "What is the formula for finding the derivative of a function?", a: ["f'(x) = lim(h->0) [(f(x+h) - f(x))/h]", "f(x) = f(a) + f'(a)(x-a) + f''(a)/2!(x-a)^2 + f'''(a)/3!(x-a)^3 + ...", "∫[a,b] f(x) dx ≈ (b-a)/n [f(x0) + f(x1) + ... + f(xn-1)]"], correctAnswer: "f'(x) = lim(h->0) [(f(x+h) - f(x))/h]"),
                 Question(q: "What is the formula for finding the surface area of a cylinder?", a: ["2pirh + 2pir^2", "pir^2h", "4/3pir^3"], correctAnswer: "2pirh + 2pir^2"),
                 Question(q: "What is the formula for finding the perimeter of a rectangle?", a: ["2 * (length + width)", "length * width", "length + width"], correctAnswer: "2 * (length + width)"),
                 Question(q: "What is the formula for finding the nth term of a geometric sequence?", a: ["ar^(n-1)", "a + (n-1)d", "n(a1 + an)/2"], correctAnswer: "ar^(n-1)"),
                 Question(q: "What is the formula for finding the discriminant of a quadratic equation?", a: ["b^2 - 4ac", "b/a", "(-b ± √(b^2 - 4ac)) / 2a"], correctAnswer: "b^2 - 4ac"),
                 Question(q: "What is the most downloaded app of all time?", a: ["WhatsApp", "Facebook", "TikTok"], correctAnswer: "WhatsApp"),
                 Question(q: "What is the name of the social media app that limits messages to 140 characters?", a: ["Facebook", "Instagram", "Twitter"], correctAnswer: "Twitter"),
                 Question(q: "What is the name of the app that allows users to create and share short videos with popular songs?", a: ["Instagram", "YouTube", "TikTok"], correctAnswer: "TikTok"),
                 Question(q: "What is the name of the app that allows users to send disappearing photos and videos?", a: ["Snapchat", "Facebook", "Instagram"], correctAnswer: "Snapchat"),
                 Question(q: "What is the name of the app that allows users to find and listen to podcasts?", a: ["Spotify", "iTunes", "SoundCloud"], correctAnswer: "Spotify"),
                 Question(q: "What is the name of the app that allows users to book and review ridesharing services?", a: ["Uber", "Lyft", "Grab"], correctAnswer: "Uber"),

    ]
    var counterQuestions = 0
    var counterScore = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[counterQuestions].correctAnswer {
            counterScore += 1
            return true
        }
        else {
            return false
        }
    }
    mutating func updateCounterQuestions () {
        if (quiz.count > counterQuestions + 1) {
            counterQuestions += 1
        }
        else {
            counterQuestions = 0
            counterScore = 0
        }
    }
    func getNextQuestion() -> String {
        return quiz[counterQuestions].question
    }
    func updateProgressBar () -> Float {
        return Float(counterQuestions+1)/Float(quiz.count)
    }
    func getCounterScore() -> Int {
        return counterScore
    }
    func getAvailableAnswers () -> [String] {
        return quiz[counterQuestions].answer
    }
}
