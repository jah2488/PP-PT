require 'spec_helper'

describe Project do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:user_id) }
  it { should belong_to(:user) }
  it { should have_many(:tasks) }
  it { should have_many(:actions).through(:tasks) }

  describe 'Scopes' do
    describe 'for' do
      it 'filters all results by a user_id' do
        FactoryGirl.create(:project, :user_id => 1)
        FactoryGirl.create(:project, :user_id => 1)
        FactoryGirl.create(:project, :user_id => 2)
        Project.for(1).count.should == 2
        Project.for(2).count.should == 1
      end
    end
  end

  describe 'progress' do
    let(:project) { FactoryGirl.create(:project) }
    context 'with 0 tasks' do
      it 'returns 0 percent completed' do
        expect(project.progress).to be 0
      end
    end
    context 'with 1 task' do
      context 'not complete' do
        it 'returns 0' do
          project.tasks << Task.new(:completed => false)
          expect(project.progress).to be 0
        end
      end
      context 'complete' do
        it 'returns 100' do
          project.tasks << Task.new(:completed => true)
          expect(project.progress).to be 100
        end
      end
    end
  end

end
