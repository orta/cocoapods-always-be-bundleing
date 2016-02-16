require File.expand_path('../../spec_helper', __FILE__)

module Pod
  describe Command::Bundleing do
    describe 'CLAide' do
      it 'registers it self' do
        Command.parse(%w{ bundleing }).should.be.instance_of Command::Bundleing
      end
    end
  end
end

