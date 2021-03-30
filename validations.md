# ActiveRecord Validations

# What are validations?
- Makes sure we don't have bad data
- Requirements
- Conditions that need to be met before hitting database
- database guard dogs

# Where do validations get defined?
- in the model, at the very top of the file after assocations

# Native validations
- foreign key in your table
- bcrypt will add required password 

# Defining validations
- go inside the model after associations 
- method validates :attr, helper 

# What invokes our validations
(lifecycle methods) - .save, .update, .create
(non lifecycle methods) - .valid?(not persisting to db), .invalid?

# How do we know what erred?
- @errors => .errors

# displaying error messages
- print on the same form page

