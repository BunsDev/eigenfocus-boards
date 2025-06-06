module ApplicationHelper
  include Pagy::Frontend
  include ApplicationHelper::CustomPagy

  include ApplicationHelper::Alerts
  include ApplicationHelper::Forms
  include ApplicationHelper::Modal
  include ApplicationHelper::Themes
  include ApplicationHelper::Icons
  include ApplicationHelper::PageTitle
  include ApplicationHelper::TimeTracking
  include ApplicationHelper::Labels
  include ApplicationHelper::WebsocketsSecurity
  include ApplicationHelper::IssueEmbedded
  include ApplicationHelper::AppTour
  include ApplicationHelper::DueDate
  include ApplicationHelper::Issues
end
