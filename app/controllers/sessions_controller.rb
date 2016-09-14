class SessionsController < ApplicationController

  def create
    Session::Create.run(request.env['omniauth.auth']) do |op|
      session[:user_id] = op.model.id
      return redirect_to(root_path, notice: "Successfully signed in as #{op.model.name}")
    end
  end

end
