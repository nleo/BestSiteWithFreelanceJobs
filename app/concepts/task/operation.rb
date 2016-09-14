class Task::Create < Trailblazer::Operation
  contract do
    property :body, validates: {presence: true}
    property :body_rendered
  end

  def process(params)
    @model = Task.new

    validate(params[:task], @model) do |f|
      f.body_rendered = MarkdownRender.render(f.body)
      f.save
    end
  end

end
