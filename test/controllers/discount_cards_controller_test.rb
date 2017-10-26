require 'test_helper'

class DiscountCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @discount_card = discount_cards(:one)
  end

  test "should get index" do
    get discount_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_discount_card_url
    assert_response :success
  end

  test "should create discount_card" do
    assert_difference('DiscountCard.count') do
      post discount_cards_url, params: { discount_card: { category_id: @discount_card.category_id, store_id: @discount_card.store_id, user_id: @discount_card.user_id } }
    end

    assert_redirected_to discount_card_url(DiscountCard.last)
  end

  test "should show discount_card" do
    get discount_card_url(@discount_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_discount_card_url(@discount_card)
    assert_response :success
  end

  test "should update discount_card" do
    patch discount_card_url(@discount_card), params: { discount_card: { category_id: @discount_card.category_id, store_id: @discount_card.store_id, user_id: @discount_card.user_id } }
    assert_redirected_to discount_card_url(@discount_card)
  end

  test "should destroy discount_card" do
    assert_difference('DiscountCard.count', -1) do
      delete discount_card_url(@discount_card)
    end

    assert_redirected_to discount_cards_url
  end
end
