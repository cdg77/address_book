class Contacts
    define_method(:initialize) do |first_name, last_name, birthday|
      @first_name = first_name
      @last_name = last_name
      @birthday = birthday
    end

    define_method(:first_name) do
      @first_name
    end
end
