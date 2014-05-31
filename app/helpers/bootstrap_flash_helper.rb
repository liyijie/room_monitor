module BootstrapFlashHelper
  ALERT_TYPES = [:error, :info, :success, :warning]

  def bootstrap_flash
    flash_messages = []

    if flash[:notice]
      text = content_tag(:div,
                         content_tag(:button, raw("&times;"), :class => "close", "data-dismiss" => "alert") +
                         flash[:notice].html_safe, :class => "alert fade in alert-success")
      flash_messages << text
    end

    if flash[:alert]
      text = content_tag(:div,
                         content_tag(:button, raw("&times;"), :class => "close", "data-dismiss" => "alert") +
                         flash[:alert].html_safe, :class => "alert fade in alert-danger")
      flash_messages << text
    end

    flash_messages.join("\n").html_safe
  end
end