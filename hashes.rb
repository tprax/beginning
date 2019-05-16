#Hashes
person = {first_name: 'first',last_name: 'last', age: 28}
puts person[:first_name]
puts person[:last_name]
puts person[:age]
languages = {
  language: {
    ruby: {
      conceived: 1993 ,
      awesomeness: 9000
    },
    java:{
      conceived: 1991,
      awesomeness: 0
    }
  }
}
puts languages[:language][:ruby][:awesomeness]
languages[:language][:java][:awesomeness] = -280000
puts languages[:language][:java][:awesomeness]
