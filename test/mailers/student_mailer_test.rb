require 'test_helper'

class StudentMailerTest < ActionMailer::TestCase
  test "bienvenue" do
    mail = StudentMailer.bienvenue
    assert_equal "Bienvenue", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
