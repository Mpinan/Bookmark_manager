feature Bookmark do
  scenario 'It return Hello World' do
    visit '/'
    expect(page).to have_content('Hello World')
  end
end