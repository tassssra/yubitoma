# app/helpers/events_helper.rb
module EventsHelper
  def show_event_image(event)
    if event.image.attached?
      image_tag event.image.variant(resize: "300x300"), class: "img-thumbnail"
    else
      image_tag "no_image.png", class: "img-thumbnail"
    end
  end
end
