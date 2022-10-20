#scan - returns an array of all items in your string 
p "The rain in Spain lies mainly in the plain".scan(/\w+ain/)
# => ["rain", "Spain", "main", "plain"]

#match - returns the first item in your string
p "The rain in Spain lies mainly in the plain".match(/\w+ain/)
# => #<MatchData "rain"> 

#grep - return an array of matching items from an array
names = ["Jeri Faria", "Althea Voth", "Audry Donoho", "Scotty Chaves", "Lance Barrio", "Zachary Newhall", "Stefany Janey", "Tressie Kinsel", "Raven Grimsey", "Marketta Gaylor", "Leota Crowe", "Mazie Norman", "Damien Loffredo"]
#get items from array where the first name has five letters:
p names.grep(/^\w{5}\s/)
# => ["Audry Donoho", "Lance Barrio", "Raven Grimsley", "Leota Crowe", "Mazie Norman"]

#capture groups
numbers = "202-555-0192 202-555-0147 202-555-0131 202-555-0116 202-555-0192 202-555-0197"
p number_breakdown = numbers.scan(/(\d+)-(\d+)-(\d+)/)
# => [["202", "555", "0192"], ["202", "555", "0147"], ["202", "555", "0131"], ["202", "555", "0116"], ["202", "555", "0192"], ["202", "555", "0197"]] 

p number_breakdown[0]
# => ["202", "555", "0192"]

p number_breakdown[0][1]
# => "555"