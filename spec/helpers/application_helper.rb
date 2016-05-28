module ApplicationHelper
  def sign_up
    visit '/'
    click_link('Sign up')
    fill_in('Email', with: 'test@example.com')
    fill_in('Password', with: 'testtest')
    fill_in('Password confirmation', with: 'testtest')
    click_button('Sign up')
  end

  def sign_up_add_restaurant
    sign_up
    click_link 'add a restaurant'
    fill_in 'Name', with: 'KFC'
    click_button 'Create Restaurant'
    expect(page).to have_content ('KFC')
    expect(current_path).to eq '/restaurants'
  end
end
