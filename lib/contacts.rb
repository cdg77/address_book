class Contacts
    @@contacts = []
    define_method(:initialize) do |first_name, last_name, birthday|
      @first_name = first_name
      @last_name = last_name
      @birthday = birthday
      @id = @@contacts.length.+(1)
      @email = []
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

    define_singleton_method(:clear) do
      @@contacts = []
    end

    define_method(:id) do
      @id
    end
    define_singleton_method(:find) do |id|
      found_contact = nil
      @@contacts.each() do |contact|
        if contact.id().eql?(id)
          found_contact = contact
        end
      end
      found_contact
    end
end
