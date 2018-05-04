RSpec.describe 'User' do

  it 'should show the number of specials associated with each comedian' do
    comedian = Comedian.create(name: 'Bo Burnham', age: 23)
    special_1 = Special.create(name: 'What', comedian_id: 1)
    special_2 = Special.create(name: 'Idk', comedian_id: 1)
    visit('/comedians')

    expect(page).to have_content(2)
  end
end
