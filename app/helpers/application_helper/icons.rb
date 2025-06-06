module ApplicationHelper
module Icons
  def icon_for(name)
    icon_classes = case name.to_sym
    when :time_entries
      "fa-solid fa-clock"
    when :groupings
      "fa-solid fa-table-columns"
    when :boards
      "fa-solid fa-chart-simple rotate-180"
    when :issues
      "fa-solid fa-list-ul"
    when :comments
      "fa-solid fa-comment"
    when :files
      "fa-solid fa-file"
    when :projects
      "fa-solid fa-folder-closed"
    when :user
      "fa-solid fa-user"
    when :report
      "fa-solid fa-gauge"
    when :issue_labels
      "fa-solid fa-tags"
    when :theme
      "fa-solid fa-palette"
    when :archived
      "fa-solid fa-box-archive"
    when :finished
      "fa-solid fa-check"
    else
      raise "Icon class not defined for name #{name}"
    end

    %Q(
      <i class="#{icon_classes}"></i>
    ).html_safe
  end
end
end
