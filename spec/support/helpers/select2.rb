module DomIdRspecHelper
  def select_from_select2(label_for: nil, option_text:, selector: nil)
    if selector
      first(selector).click
    else
      first("label[for=#{label_for}]").click
    end
    expect(page).to have_css(".select2-dropdown") # waits for the dropdown to close
    page.find('.select2-results li.select2-results__option', text: option_text, visible: :all).click
    expect(page).to_not have_css(".select2-dropdown") # waits for the dropdown to close
  end

  def add_to_select2(label_for: nil, option_text:, selector: nil)
    if selector
      first(selector).click
    else
      first("label[for=#{label_for}]").click
    end

    within(selector) do
      page.find("textarea.select2-search__field").send_keys option_text
      page.find("textarea.select2-search__field").send_keys :enter
    end
  end
end

RSpec.configure do |config|
  config.include DomIdRspecHelper, type: :feature
end
