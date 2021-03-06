# All Administrate controllers inherit from this `Admin::ApplicationController`,
# making it the ideal place to put authentication logic or other
# before_filters.
#
# If you want to add pagination or other controller-level concerns,
# you're free to overwrite the RESTful controller actions.
module Admin
  class ApplicationController < Administrate::ApplicationController
    http_basic_authenticate_with name: 'admin_pnj', password: 'pkkp2017'

    before_action :set_locale

    private

    def set_locale
      I18n.locale = :en
    end

    # def authenticate_admin
    #   # TODO Add authentication logic here.
    # end

    # Override this value to specify the number of elements to display at a time
    # on index pages. Defaults to 20.
    # def records_per_page
    #   params[:per_page] || 20
    # end
  end
end
