module PageUploadHelper
  
  # FIXME: this is unused. implement it without inline javascript
  def new_page_upload_link(project,page,in_bar)
    link_to_function "<span>#{t('.new_upload')}</span>", show_page_upload_form(in_bar), :class => 'add_button'
  end
  
end