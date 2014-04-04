require 'urbanairship'

class MailerBox


  def notify_users(requestor, user)
    [requestor, user].each{ |u| notify_user(requestor, u) }
  end

  def notify_user(requestor, user)
    @requestor = requestor
    @user = user
    mail :to => user.email, :subject => "User requested update"
  end


  def test

    #to test sending emails to both recipients

    ActionMailer::Base.deliveries.last
    ActionMailer::Base.deliveries.count

    describe "User request update" do
      let(:user_one) { FactoryGirl.create(:user) }
      let(:user_two) { FactoryGirl.create(:user) }
      # let(:mail) { UserMailer.notify_users(user_one, user_two) }

      # If your method sends two separate emails:
      it "#notify_users should notify both users" do
        UserMailer.notify_users(user_one, user_two)
        expect(ActionMailer::Base.deliveries.count).to eq(2)
        expect(ActionMailer::Base.deliveries[0].to).to include(user_one.email)
        expect(ActionMailer::Base.deliveries[1].to).to include(user_two.email)
      end

      # If your method sends a single email with both recipients
      it "#notify_users should notify both users" do
        UserMailer.notify_users(user_one, user_two)
        expect(ActionMailer::Base.deliveries.count).to eq(1)
        expect(ActionMailer::Base.deliveries.last.to).to include(user_one.email)
        expect(ActionMailer::Base.deliveries.last.to).to include(user_two.email)
      end
    end
  end
end