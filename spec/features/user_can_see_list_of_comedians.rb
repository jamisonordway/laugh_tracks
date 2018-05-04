RSpec.describe 'User' do

  it 'should see a list of all comedians' do
    comedian_name = 'Bo Burnham'
    comedian_age = 23
    comedian = Comedian.create(name: comedian_name, age: comedian_age)
    visit('/comedians')

    expect(page).to have_content(comedian_name)
    expect(page).to have_content(comedian_age)
  end
end
