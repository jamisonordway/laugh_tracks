RSpec.describe 'User' do

  it 'should see a list of specials for each comedian' do
    comedian = Comedian.create(name: 'Bo', age: 23)
    special = Special.create(name: 'What', comedian_id: 1)
    visit('/comedians')
    
    expect(page).to have_content(special)
  end
end
