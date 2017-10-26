require 'test_helper'

class DescriptorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @descriptor = descriptors(:one)
  end

  test "should get index" do
    get descriptors_url
    assert_response :success
  end

  test "should get new" do
    get new_descriptor_url
    assert_response :success
  end

  test "should create descriptor" do
    assert_difference('Descriptor.count') do
      post descriptors_url, params: { descriptor: { category_id: @descriptor.category_id, description_id: @descriptor.description_id, foreign_key_id: @descriptor.foreign_key_id, foreign_key_type: @descriptor.foreign_key_type, name: @descriptor.name } }
    end

    assert_redirected_to descriptor_url(Descriptor.last)
  end

  test "should show descriptor" do
    get descriptor_url(@descriptor)
    assert_response :success
  end

  test "should get edit" do
    get edit_descriptor_url(@descriptor)
    assert_response :success
  end

  test "should update descriptor" do
    patch descriptor_url(@descriptor), params: { descriptor: { category_id: @descriptor.category_id, description_id: @descriptor.description_id, foreign_key_id: @descriptor.foreign_key_id, foreign_key_type: @descriptor.foreign_key_type, name: @descriptor.name } }
    assert_redirected_to descriptor_url(@descriptor)
  end

  test "should destroy descriptor" do
    assert_difference('Descriptor.count', -1) do
      delete descriptor_url(@descriptor)
    end

    assert_redirected_to descriptors_url
  end
end
