require 'urbanairship'

class NotificationProvider


  def  notification

   Urbanairship.register_device('DEVICE-TOKEN')
   # ,
   #                            :alias => 'user-1234',
   #                            :tags => ['chicago-users']
  #)

   Urbanairship.push({
                         :device_tokens => ['DEVICE-TOKEN'],
                         :aps => {:alert => 'You have a new message!', :badge => 1}
                     })
   #
   #Urbanairship.push({
   #                      :tags => ['chicago-users'],
   #                      :schedule_for => [1.hour.from_now],
   #                      :aps => {:alert => 'Hello Chicago!', :badge => 1}
   #                  })

   #Urbanairship.batch_push(
   #    {
   #        :device_tokens => ['DEVICE-TOKEN'],
   #        :aps => {:alert => 'Message one', :badge => 1}
   #    },
   #    {
   #        :device_tokens => ['DEVICE-TOKEN-TWO'],
   #        :aps => {:alert => 'Message two', :badge => 1}
   #    }
   #)

   #This retrieves all devices which rejected a notification in the last 24 hours.
   Urbanairship.feedback(24.hours.ago)

  end
end