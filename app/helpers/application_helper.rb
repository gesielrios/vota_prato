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

  def comentarios(comentavel)
    comentarios = "<h3>Comentarios</h3>"
    comentarios << "<div id='comentarios'>"
    comentarios << render(:partil => "comentarios/comentario", :collection => comentavel.comentarios)
    comentarios << "</div>"
    raw comentarios
  end

  def valor_formatado(number)
    number_to_corrency(number, :unit => "R$", :separator => ",", :delimiter => ".")
  end

  def novo_comentario(comentavel)
    raw render(:partial => "comentarios/novo_comentario", :locals => {:comentavel => comentavel })
  end

end

