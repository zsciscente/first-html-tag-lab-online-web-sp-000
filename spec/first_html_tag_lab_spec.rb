RSpec.describe 'Your First HTML Tag' do
  
  puts "Are these run immediately"
  it 'is an H1 in index.html' do
    h1 = parsed_html.search('h1').first

    expect(h1).to_not be_nil, hint(1, h1)
  end

  it "the H1 contains 'Hello, World!'" do
    h1_content = parsed_html.search('h1').text

    expect(h1_content).with_hints_to(eq('Hello, World!'), hint(2, h1_content))
  end

  puts "or not"
end
