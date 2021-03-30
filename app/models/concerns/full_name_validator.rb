class FullNameValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      if value.split(" ").count < 2
        record.errors.add :name, message: "Please provide full name"
      end 
      # check to see if users input is greater than or equal 2
    end
end