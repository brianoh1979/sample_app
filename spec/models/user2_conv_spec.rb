require("rails_helper")
describe(User) do
  context("validations") do
    it { it(validate_presence_of(:email)) }
    it { it(validate_presence_of(:password)) }
    it { it(validate_confirmation_of(:password)) }
  end
end
