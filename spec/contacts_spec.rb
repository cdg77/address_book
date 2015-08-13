require('rspec')
require ('contacts')

describe(Contacts) do

  describe("#first_name") do
    it("returns the first name of a contact") do
      test_first_name = Contacts.new("Oleander", "Oscar", "7/7/77")
      expect(test_first_name.first_name()).to(eq("Oleander"))
    end
  end

end
