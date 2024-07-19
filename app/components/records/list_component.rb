# frozen_string_literal: true

module Records
  class ListComponent < ::LiveComponent
    def initialize(resource_model:, collection:, render: true, new_resource_url: nil, frame_tag: nil,
      list_resource_frame_tag: nil, show_title: true, title: nil, pagy: nil, searchable: false, search_url: nil,
      index_frame_tag_id: nil, search_placeholder: nil)
      @resource_model = resource_model
      @collection = collection
      @render = render
      @new_resource_url = new_resource_url
      @frame_tag = frame_tag
      @list_resource_frame_tag = list_resource_frame_tag
      @show_title = show_title
      @title = title
      @pagy = pagy
      @searchable = searchable
      @search_url = search_url
      @index_frame_tag_id = index_frame_tag_id
      @search_placeholder = search_placeholder
      super
    end

    private

    def render? = @render

    def new_resource_path = @new_resource_url || new_polymorphic_path(@resource_model)
  end
end
