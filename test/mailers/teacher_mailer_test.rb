require 'test_helper'

class TeacherMailerTest < ActionMailer::TestCase
  test "bienvenue_prof" do
    mail = TeacherMailer.bienvenue_prof
    assert_equal "Bienvenue prof", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
