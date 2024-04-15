
resource "random_string" "my_random_string" {

# Specify the length of the random string (e.g., 10 characters)
  length  = 10  
# Include special characters in the random string (e.g., !@#$%^&*)
  special = true  
# Include uppercase letters in the random string
  upper   = true  
 # Include lowercase letters in the random string
  lower   = true 
# Include numbers in the random string
  number  = true  
}

output "random_string_value" {
  value = random_string.my_random_string.result
}
