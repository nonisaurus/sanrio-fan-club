class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  def after_sign_in_path_for(resource)
    root_path
  end
end
