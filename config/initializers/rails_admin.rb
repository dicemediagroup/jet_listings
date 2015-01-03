RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)
  ## == Manual Auth ==

  ## == Custom Labeling ==
  config.main_app_name = Proc.new { |controller| [ "JET Listings", 
    "Backstage- #{controller.params[:action].try(:titleize)}" ] }


  ## == Models ==
  config.model 'Location' do
    # Navigation
    weight -1
    # listing
    list do
      field :title do
        label "Title"
      end
      field :street1 do
        label "Street"
      end
      field :neighborhood do
        label "Neighborhood"
      end
      field :city do
        label "City"
      end
      field :created_at do
        label "Created"
      end
    end
  end
  ## == HTTP Auth == 
  config.authorize_with do
    authenticate_or_request_with_http_basic('Site Message') do |username, password|
      username == ENV['USERNAME'] && password == ENV['PASSWORD']
    end
  end
  
  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
