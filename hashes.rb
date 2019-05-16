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
      awesomeness: -2800
    }
  }
}
puts languages[:language][:ruby][:awesomeness]
