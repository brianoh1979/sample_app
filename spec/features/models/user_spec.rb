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
<testcase classname="spec.features.integration.rails_admin_spec" name="RailsAdmin signed in and authorized user LeaseTerms allows the user to index and edit lease terms" file="./spec/features/integration/rails_admin_spec.rb" time="12.645145">
<failure message="expected to find visible css "div.page-header h1" with text "Edit Lease term 'LeaseTerm #107'" but there were no matches. Also found "List of Lease term", which matched the selector but not all filters." type="RSpec::Expectations::ExpectationNotMetError">
Failure/Error: \e[0m\e[32mexpect\e[0m(page).to have_selector(\e[31m\e[1;31m'\e[0m\e[31mdiv.page-header h1\e[1;31m'\e[0m\e[31m\e[0m, \e[35mtext\e[0m: \e[31m\e[1;31m"\e[0m\e[31mEdit Lease term 'LeaseTerm ##{lease_term.id}\e[0m\e[31m'\e[1;31m"\e[0m\e[31m\e[0m) expected to find visible css "div.page-header h1" with text "Edit Lease term 'LeaseTerm #107'" but there were no matches. Also found "List of Lease term", which matched the selector but not all filters. ./spec/features/integration/rails_admin_spec.rb:90:in `block (4 levels) in <top (required)>' ./spec/rails_helper.rb:125:in `block (3 levels) in <top (required)>' ./spec/rails_helper.rb:123:in `block (2 levels) in <top (required)>' ./spec/rails_helper.rb:84:in `block (2 levels) in <top (required)>' ./spec/support/stackprof.rb:12:in `block (2 levels) in configure' ./spec/support/profile_rspec.rb:15:in `block (2 levels) in <top (required)>' ./spec/spec_helper.rb:37:in `block (2 levels) in <top (required)>'
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
