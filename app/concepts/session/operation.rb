class Session::Create < Trailblazer::Operation

  def process(params)
    @model = User.find_or_initialize_by(provider: params[:provider], uid: params[:uid])
    @model.name = params['info']['name']
    @model.image = params['info']['image']
    @model.save
  end

end
