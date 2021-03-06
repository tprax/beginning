#Contact List
#Create Contact List
#Create Menu
  #1. Create A Contact
  #2. View All Contacts
  #3. Delete Contact
  #4. Edit Contact
  #5. Exit
@contact_array = []

#Menu method for displaying the Menu Options
  def menu
    puts "---Contact Menu---"
    puts "1.) Create a Contact"
    puts "2.) View your Contacts"
    puts "3.) Delete a Contact"
    puts "4.) Edit Contact"
    puts "5.) Exit"
    answer = gets.to_i
    case answer
      when 1
        create_contact
      when 2
        list_contacts
      when 3
        delete_contact
      when 4
        edit_contact
      when 5
        exit
      end
  end

#Method for creating a contact
  def create_contact
    contact_hash = Hash.new(0)
    puts "Contact Being Created"

    puts "Please Enter First Name"
    contact_first = gets.to_s.strip
    contact_hash[:first_name] = contact_first

    puts "Please Enter Last Name"
    contact_last = gets.to_s.strip
    contact_hash[:last_name] = contact_last

    puts "Please Enter Email Address"
    contact_email = gets.to_s.strip
    contact_hash[:email] = contact_email

    puts "Please Enter Phone Number"
    contact_number = gets.to_s.strip
    contact_hash[:number] = contact_number
    @contact_array << contact_hash
  end

#Method for display all contacts
  def list_contacts
    puts "--------------------------"
    puts "Here are all your Contacts"
    puts ""
    number = 1
    @contact_array.each do |contact|
      puts "#{number}.) Name: #{contact[:first_name]} #{contact[:last_name]}"
      puts "Email: #{contact[:email]}"
      puts "Phone Number: #{contact[:number]}"
      puts ""
      number = number + 1
    end
    puts "--------------------------"
  end

  #Method for deleting contact
  def delete_contact
    puts "Please Enter Contact Number Location"
    number = gets.to_i
    @contact_array.delete_at(number - 1)
  end

#Methods for edit contacts
  def edit_contact
    puts "Please Enter Contact Number Location to Edit"
    @contact = gets.to_i
    @contact = @contact - 1
    @contact_array[@contact].each{|key, value| puts "#{key}: #{value}"}
    puts "Edit this Contact?"
    answer = gets.to_s.strip
    if answer == "yes"
      edit_specific
    else
      menu
    end
  end

  def edit_specific
    puts "What did you want to Edit?"
    number = 0
    @contact_array[@contact].each_key{|key| puts "#{number = number + 1}.)#{key}" }
    answer = gets.to_i
    case answer
      when 1
        puts "Please enter new First Name."
        new_first = gets.to_s.strip
        @contact_array[@contact].update({:first_name => new_first})
        puts "Updated"
      when 2
        puts "Please enter new Last Name."
        new_last = gets.to_s.strip
        @contact_array[@contact].update({:last_name => new_last})
        puts "Updated"
      when 3
        puts "Please enter new Email."
        new_email = gets.to_s.strip
        @contact_array[@contact].update({:email => new_email})
        puts "Updated"
      when 4
        puts "Please enter new Phone Number."
        new_number = gets.to_s.strip
        @contact_array[@contact].update({:number => new_number})
        puts "Updated"
    end
    puts ""
    puts "Are you finished Editing?"
    answer = gets.to_s.strip
    if answer == "yes"
      menu
    else
      edit_specific
    end
  end

  while true
    menu
  end

menu
