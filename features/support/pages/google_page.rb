class GooglePage

  def initialize(browser)
    @page_browser = browser
    @page_browser.goto 'https://google.com'
  end

  def search_for(term)
    search_field.set term
  end

  def search_field
    @page_browser.text_field(id: 'lst-ib')
  end

  def search_button
    @browser.button(name: 'btnG')
  end

  def search_result
    @browser.divs(class: 'st').first.text
  end

end
