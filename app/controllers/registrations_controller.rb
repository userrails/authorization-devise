class RegistrationsController < Devise::RegistrationsController
  # def new
  #   @user = User.new
  # end

  def create
    super

    if resource.is_a?(User)
      resource.update_attributes(:status => "registered")
    end
  end
end