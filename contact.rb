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
    @contact_array.each do |contact|
      puts "Name: #{contact[:first_name]} #{contact[:last_name]}"
      puts "Email: #{contact[:email]}"
      puts "Phone Number: #{contact[:number]}"
      puts ""
    end
    puts "--------------------------"
  end

  #Method for deleting contact
  def delete_contact
    puts "Please Enter Contact to Delete"
    contact = gets.to_s
    @contact_array.delete(contact)
  end

#Method for edit contacts
  def edit_contact
    puts "Please Enter Contact to Edit"
    contact = gets.to_s
    @contact_array.delete(contact)
    puts "Please Enter New Contact Info"
    contact_edit = gets.to_s
    @contact_array << contact_edit
    puts "#{contact_edit} Has been updated."
  end

  while true
    menu
  end

menu
