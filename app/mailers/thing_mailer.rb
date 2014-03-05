class ThingMailer < ActionMailer::Base
  default :from => "adoptgr@adoptgr.herokuapp.com"

  def reminder(thing)
    @thing = thing
    @user = thing.user
    mail(
      {
        :to => thing.user.email,
        :subject => ["Remember to shovel", thing.name].compact.join(' '),
      }
    )
  end
end
