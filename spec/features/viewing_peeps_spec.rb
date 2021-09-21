require "./app.rb"

feature 'Viewing peeps' do
    scenario 'A user can visit the page' do
        visit('/')
        expect(page).to have_content "Chitter"
    end

    scenario 'A user can see peeps' do
        visit('/peeps')
    
        expect(page).to have_content "It's a beautiful day"
        expect(page).to have_content "Wake me up when September ends"
      end
    
  end