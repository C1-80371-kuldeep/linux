#!/bin/bash  

 
address_book_file="address_book.txt"   

add_contact() {     
echo "Enter the following details for the new contact:"     
read -p "Name: " name     
read -p "Email: " email     
read -p "Mobile Number: " mobile      
echo "$name:$email:$mobile" >> "$address_book_file"     
echo "Contact added successfully!" 
}  


view_contacts() {     
if [ -s "$address_book_file" ]; then         
	echo "List of Contacts:"         
	cat "$address_book_file"     
else         
	echo "Address book is empty."     
fi 
}  

 
search_contact() {     
read -p "Enter the name to search: " search_name     
grep -i "$search_name" "$address_book_file" 
}  

 
delete_contact() {     
read -p "Enter the name to delete: " delete_name     
if grep -qi "$delete_name" "$address_book_file"; then         
	grep -v "$delete_name" "$address_book_file" > "$address_book_file.tmp"         
	mv "$address_book_file.tmp" "$address_book_file"         
	echo "Contact deleted successfully."     
else         
	echo "Contact not found in the address book."     
fi 
}  

 
count_contacts() {     
contact_count=$(wc -l < "$address_book_file")     
echo "Number of contacts: $contact_count" 
}  

# Main menu 
while true; do
	echo "Address Book Menu"     
	echo "------------------------------"     
	echo "1. Add a new contact"     
	echo "2. View all contacts"     
	echo "3. Search for a contact"     
	echo "4. Delete a contact"     
	echo "5. Count of contacts"     
	echo "6. Exit"     
	read -p "Enter your choice (1-6): " choice
      
	case $choice in         
		1) add_contact ;;         
		2) view_contacts ;;         
		3) search_contact ;;         
		4) delete_contact ;;         
		5) count_contacts ;;         
		6) echo "Exiting Address Book"; exit ;;         
		*) echo "Invalid choice. Please select a valid option (1-6).";;     
	esac 
done


