class PostDecorator < Draper::Decorator
  # delegate_all
  decorates_finders

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  
    def created_at
      helpers.content_tag :span, class: 'time' do
        post.created_at.strftime("%a %m/%d/%y")
      end
    end

    # def dataAtribut
    # 	{created_at: created_at, name: title, body: body}
    # end
end
