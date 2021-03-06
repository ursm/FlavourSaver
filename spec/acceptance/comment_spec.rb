require 'tilt'
require 'flavour_saver'

describe 'Fixture: comment.hbs' do
  subject { Tilt.new(template).render(context).gsub(/[\s\r\n]+/, ' ').strip }
  let(:template) { File.expand_path('../../fixtures/comment.hbs', __FILE__) }
  let(:context)  { stub(:context) }

  it 'renders correctly' do
    subject.should == "I am a very nice person!"
  end
end
