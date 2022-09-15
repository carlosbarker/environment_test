# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'J. K. Rowling', price: 50, published_date: 06-26-1997)
  end

  it 'is valid with all attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without all attributes' do
    subject.title = nil
    subject.author = nil
    subject.price = nil
    subject.published_date = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
  end

  it 'is not valid with just a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(author: 'J. K. Rowling')
  end

  it 'is not valid with just an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(price: 50)
  end

  it 'is not valid with just a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(published_date: 06-26-1997)
  end

  it 'is not valid with just a publication date' do
    subject.published_date = nil
    expect(subject).not_to be_valid
  end
end
