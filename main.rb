puts 'Welome to RDocs! - A place to create store and edit all your files.'

sleep(1)

puts "\nDo you want to 'create' a document or 'open' document\nor 'edit' a document? If your want to delete a document type 'delete'.\n"

inp = gets.chomp!

if inp == 'create'
  puts "What is your document's name?"
  name = gets.chomp!

  puts 'What is going to be in your docmuent?'
  stuffind = gets.chomp!

  file = File.new("#{name}.txt", 'a+')
  file.puts(stuffind)
  file.close
  puts "\nYour document was ceated."
elsif inp == 'open'
  puts 'Which document do you want to open'
  file_open = gets.chomp!
  if File.file?("#{file_open}.txt")
    puts File.read("#{file_open}.txt")
  else
    puts 'Sorry the file you asked for was not found.'
  end
elsif inp == 'edit'
  puts 'Which document do you want to edit?'
  file_edit_name = gets.chomp!
  if File.file?("#{file_edit_name}.txt")
    puts 'What do want to add to the document?'
    file_edit = gets.chomp!
    File.open("#{file_edit_name}.txt", 'a+') do |file|
      file.puts(file_edit)
    end
  else
    puts 'Sorry the file you asked for was not found.'
  end
elsif inp == 'delete'
  puts 'What file do you want to delete?'
  file_delete = gets.chomp!
  if File.file? "#{file_delete}.txt"
    File.delete("#{file_delete}.txt")
  else
    puts 'Sorry the file you wanted to delete was not found.'
  end
else
  puts "Sorry, I don't understand.\nTry again and type either, 'create', 'edit', or 'delete'."
end

puts "\nClick 'Run' to enter your RDocs again."
