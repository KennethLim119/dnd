require 'test_helper'

class AirsControllerTest < ActionController::TestCase
  setup do
    @air = airs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:airs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create air" do
    assert_difference('Air.count') do
      post :create, air: { accomodation: @air.accomodation, bathrooms: @air.bathrooms, bedrooms: @air.bedrooms, beds: @air.beds, description: @air.description, house_rules: @air.house_rules, is_Air_Conditioning: @air.is_Air_Conditioning, is_Family_friendly: @air.is_Family_friendly, is_Gym: @air.is_Gym, is_Kitchen: @air.is_Kitchen, is_Laptop_friendly_workspace: @air.is_Laptop_friendly_workspace, is_Pets_allowed: @air.is_Pets_allowed, is_Pool: @air.is_Pool, is_TV: @air.is_TV, is_Washer: @air.is_Washer, is_Wheelchair_accessible: @air.is_Wheelchair_accessible, is_WiFi: @air.is_WiFi, location: @air.location, price: @air.price, room_id: @air.room_id, room_name: @air.room_name, room_type: @air.room_type }
    end

    assert_redirected_to air_path(assigns(:air))
  end

  test "should show air" do
    get :show, id: @air
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @air
    assert_response :success
  end

  test "should update air" do
    patch :update, id: @air, air: { accomodation: @air.accomodation, bathrooms: @air.bathrooms, bedrooms: @air.bedrooms, beds: @air.beds, description: @air.description, house_rules: @air.house_rules, is_Air_Conditioning: @air.is_Air_Conditioning, is_Family_friendly: @air.is_Family_friendly, is_Gym: @air.is_Gym, is_Kitchen: @air.is_Kitchen, is_Laptop_friendly_workspace: @air.is_Laptop_friendly_workspace, is_Pets_allowed: @air.is_Pets_allowed, is_Pool: @air.is_Pool, is_TV: @air.is_TV, is_Washer: @air.is_Washer, is_Wheelchair_accessible: @air.is_Wheelchair_accessible, is_WiFi: @air.is_WiFi, location: @air.location, price: @air.price, room_id: @air.room_id, room_name: @air.room_name, room_type: @air.room_type }
    assert_redirected_to air_path(assigns(:air))
  end

  test "should destroy air" do
    assert_difference('Air.count', -1) do
      delete :destroy, id: @air
    end

    assert_redirected_to airs_path
  end
end
