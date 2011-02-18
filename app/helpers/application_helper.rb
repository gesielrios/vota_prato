module ApplicationHelper

  def error_messages_for(resource)
    render 'commons/erro_messages', :resource => resource
  end

  def menu_principal
    menu = %w(cliente qualificacao restaurante)
    menu_principal = "<ul id='menu'>"
    menu.each do |item|
      menu_principal << "<li>" + link_to(item.titleize, :controller => item.pluralize) + "</li>"
    end
    menu_principal << "</ul>"
    raw menu_principal
  end

end

