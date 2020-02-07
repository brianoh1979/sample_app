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

<?xml version="1.0" encoding="UTF-8"?>
   <testsuites id="20140612_170519" name="New_configuration (14/06/12 17:05:19)" tests="225" failures="1262" time="0.001">
      <testsuite id="codereview.cobol.analysisProvider" name="COBOL Code Review" tests="45" failures="17" time="0.001">
         <testcase id="codereview.cobol.rules.ProgramIdRule" name="Use a program name that matches the source file name" time="0.001">
            <failure message="PROGRAM.cbl:2 Use a program name that matches the source file name" type="WARNING">
WARNING: Use a program name that matches the source file name
Category: COBOL Code Review – Naming Conventions
File: /project/PROGRAM.cbl
Line: 2
      </failure>
    </testcase>
  </testsuite>
</testsuites>
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
