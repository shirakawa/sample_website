# encoding: utf-8

もし /^"(.*?)"ページを表示する$/ do |page_name|
  case page_name
  when "トップ" then
    path = "/"
  when "about" then
    path = "/about"
  when "contacts" then
    path = "/contacts"
  end
  visit path
end

ならば /^"(.*?)"と表示されていること$/ do |text|
  page.should have_content(text)
end