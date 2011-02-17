module ApplicationHelper

  def error_messages_for(resource)
    render 'commons/erro_messages', :resource => resource
  end

end

