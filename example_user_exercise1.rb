class User
  attr_accessor :name, :email

  def initialize(attributes = {})
    @firstname  = attributes[:firstname]
    @lastname  = attributes[:lastname]
    @email = attributes[:email]
  end

  def formatted_email
    "#{@firstname} #{@lastname} <#{@email}>"
  end
end
