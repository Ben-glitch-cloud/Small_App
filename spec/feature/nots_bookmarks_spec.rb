
feature 'nots bookmarks' do
    scenario 'visting the index page' do
        visit('/')
        expect(page).to have_content "Hello World"
    end
end