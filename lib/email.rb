class Email
  @@email = []
  define_method(:initialize) do |personal, business, other|
    @personal = personal
    @business = business
    @other = other
  end
