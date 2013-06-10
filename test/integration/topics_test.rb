require 'test_helper'

class TopicsTest < ActionDispatch::IntegrationTest
  setup do
    @topic = create_topic()
  end

  test 'topics are displayed on the topic index page' do
    visit(topics_path())

    assert page.has_content?(@topic.name)
  end
end