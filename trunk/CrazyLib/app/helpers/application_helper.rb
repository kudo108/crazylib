module ApplicationHelper
  def parent_layout(layout)
    @content_for_layout = self.output_buffer
    #@_content_for[:layout] = self.output_buffer
    @view_flow.set(:layout,output_buffer)
    self.output_buffer = render(:file => "layouts/#{layout}")
  end
end
