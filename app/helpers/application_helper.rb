module ApplicationHelper

  def shift_types
    %w{morning afternoon evening}
  end

  def gender_types
    %w{male female}
  end

  def nav_link_to(link_text, link_path, options={})
    match = options.delete(:match)
    wrap_class = options.delete(:wrap_class)
    wrap_class = wrap_class.to_s << " active" if current_page?(link_path, match)
    content_tag :li, :class => wrap_class do
      link_to link_text, link_path, options
    end
  end


  def current_page?(options, match = :default)
    url_string = url_for(options)

    if match == :first
      request_uri = "/" << request.path.split('/').second.to_s
    elsif url_string.index("?") || match == :fullpath
      request_uri = request.fullpath
    else
      request_uri = request.path
    end

    if url_string =~ /^\w+:\/\//
      url_string == "#{request.protocol}#{request.host_with_port}#{request_uri}"
    else
      url_string == request_uri
    end
  end

end
