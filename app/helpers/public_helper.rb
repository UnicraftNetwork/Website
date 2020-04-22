module PublicHelper

  def resolve_landing_img
    if current_page? :controller => 'el_medievo'
      "logo_medievo.png"

    else
      "logo.png"
    end
  end

end
