module Admin
  class ParticipantsController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = User.all.paginate(10, params[:page])
    # end
    def index
      @resources = Participant.order(:name)
      respond_to do |format|
        format.html { super }
        format.csv  { send_data @resources.to_csv, filename: "Peserta PKKP 2016-#{Date.today}.csv" }
      end
    end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   User.find_by!(slug: param)
    # end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information
  end
end

