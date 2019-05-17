#Contact List
#Create Contact List
#Create Menu
  #1. Create A Contact
  #2. View All Contacts
  #3. Delete Contact
  #4. Edit Contact
  #5. Exit
@contact_array = []
#@contact_hash = Hash.new(0)

#{
#  first_name: 'First Name:',
#  last_name: 'Last Name:',
#  email: 'Email Address:',
#  number: 'Phone Number:'
#}

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

  def create_contact
    puts "Contact Being Created"
    puts "Please Enter First Name"
    contact_hash = Hash.new(0)
    contact_first = gets.to_s
    contact_hash[:first_name] = contact_first
    puts "Please Enter Last Name"
    contact_last = gets.to_s
    contact_hash[:last_name] = contact_last
    @contact_array << contact_hash
  end

  def list_contacts
    puts "Here are all your Contacts"
    @contact_array.each do |contact|
      puts contact
    end
  end

  def delete_contact
    puts "Please Enter Contact to Delete"
    contact = gets.to_s
    @contact_array.delete(contact)
  end

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
