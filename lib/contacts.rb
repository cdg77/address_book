class Contacts
    @@contacts = []
    define_method(:initialize) do |first_name, last_name, birthday|
      @first_name = first_name
      @last_name = last_name
      @birthday = birthday
      # @phone = []
    end

    define_method(:first_name) do
      @first_name
    end

    define_method(:last_name) do
      @last_name
    end

    define_method(:birthday) do
      @birthday
    end

    define_singleton_method(:all) do
      @@contacts
    end

    define_method(:save) do
      @@contacts.push(self)
    end
    


end
