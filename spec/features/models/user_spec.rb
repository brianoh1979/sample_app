require 'spec_helper'

describe User do

  before do
    @user = User.new(name: "Example User", email: "user@example.com",
                    password: "foobar", password_confirmation: "foobar")
  end

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:authenticate) }

  it { should be_valid }

string = <<EOF

<?xml version="1.0" encoding="ISO-8859-15"?>

<!DOCTYPE bibliography PUBLIC "-//OASIS//DTD DocBook XML V4.2//EN"

    "http://www.oasis-open.org/docbook/xml/4.2/docbookx.dtd">

<bibliography>

    <biblioentry id="FHIW13C-1234">

      <author>

        <firstname>Godfrey</firstname>

        <surname>Vesey</surname>

      </author>

      <title>Personal Identity: A Philosophical Analysis</title>

      <publisher>

        <publishername>Cornell University Press</publishername>

      </publisher>

      <pubdate>1977</pubdate>

   </biblioentry>

</bibliography>

EOF
#  describe "when name is not present" do
#    before { @user.name = " " }
#    it { should_not be_valid }
#  end

#  describe "when email is not present" do
#    before { @user.email = " " }
#    it { should_not be_valid }
#  end

#  describe "when name is too long" do
#    before { @user.name = "a" * 51 }
#    it { should_not be_valid }
#  end
end
