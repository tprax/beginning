#Contact List
#Create Contact List
#Create Menu
  #1. Create A Contact
  #2. View All Contacts
  #3. Delete Contact
  #4. Edit Contact
  #5. Exit
@contact_array = []

def contact_list
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
    puts "Contact created"
    puts "Please Enter Contact Name"
    contact_name = gets.to_s
    @contact_array << contact_name
  end

  def list_contacts
    puts "Here are all your Contacts"
    @contact_array.each do |contact|
      puts contact
    end
  end

  def delete_contact
    puts "Contact deleted"
  end

  def edit_contact
    puts "Edit your Contact"
  end

  menu

  puts "Did you want to do something else?"
  puts "1.)Yes"
  puts "2.)No"
  answer = gets.to_i

  if answer == 1
    contact_list
  else
    exit
  end
end

contact_list

