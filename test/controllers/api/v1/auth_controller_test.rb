require "test_helper"

class Api::V1::AuthControllerTest < ActionDispatch::IntegrationTest
  setup do
    @valid_email = "test@example.com"
    @valid_password = "password123"
  end

  # Login Tests
  test "should login with valid credentials" do
    user = User.create!(
      email: @valid_email,
      password: @valid_password,
      password_confirmation: @valid_password
    )

    post "/api/v1/auth/login", params: {
      email: @valid_email,
      password: @valid_password
    }

    assert_response :success
    json_response = JSON.parse(response.body)
    assert json_response["token"].present?
    assert_equal user.id, json_response["user"]["id"]
    assert_equal user.email, json_response["user"]["email"]
  end

  test "should not login with invalid email" do
    post "/api/v1/auth/login", params: {
      email: "nonexistent@example.com",
      password: @valid_password
    }

    assert_response :unauthorized
    json_response = JSON.parse(response.body)
    assert_equal "Invalid credentials", json_response["error"]
  end

  test "should not login with invalid password" do
    user = User.create!(
      email: @valid_email,
      password: @valid_password,
      password_confirmation: @valid_password
    )

    post "/api/v1/auth/login", params: {
      email: @valid_email,
      password: "wrong_password"
    }

    assert_response :unauthorized
    json_response = JSON.parse(response.body)
    assert_equal "Invalid credentials", json_response["error"]
  end

  test "should not login without email" do
    post "/api/v1/auth/login", params: {
      password: @valid_password
    }

    assert_response :unauthorized
    json_response = JSON.parse(response.body)
    assert_equal "Invalid credentials", json_response["error"]
  end

  test "should not login without password" do
    post "/api/v1/auth/login", params: {
      email: @valid_email
    }

    assert_response :unauthorized
    json_response = JSON.parse(response.body)
    assert_equal "Invalid credentials", json_response["error"]
  end

  # Signup Tests
  test "should signup with valid credentials" do
    assert_difference "User.count", 1 do
      post "/api/v1/auth/signup", params: {
        email: "newuser@example.com",
        password: @valid_password,
        password_confirmation: @valid_password
      }
    end

    assert_response :created
    json_response = JSON.parse(response.body)
    assert json_response["token"].present?
    assert json_response["user"]["id"].present?
    assert_equal "newuser@example.com", json_response["user"]["email"]
  end

  test "should not signup with invalid email" do
    assert_no_difference "User.count" do
      post "/api/v1/auth/signup", params: {
        email: "invalid_email",
        password: @valid_password,
        password_confirmation: @valid_password
      }
    end

    assert_response :unprocessable_entity
    json_response = JSON.parse(response.body)
    assert json_response["errors"].present?
  end

  test "should not signup with duplicate email" do
    User.create!(
      email: @valid_email,
      password: @valid_password,
      password_confirmation: @valid_password
    )

    assert_no_difference "User.count" do
      post "/api/v1/auth/signup", params: {
        email: @valid_email,
        password: @valid_password,
        password_confirmation: @valid_password
      }
    end

    assert_response :unprocessable_entity
    json_response = JSON.parse(response.body)
    assert json_response["errors"].present?
  end

  test "should not signup with password mismatch" do
    assert_no_difference "User.count" do
      post "/api/v1/auth/signup", params: {
        email: "newuser@example.com",
        password: @valid_password,
        password_confirmation: "different_password"
      }
    end

    assert_response :unprocessable_entity
    json_response = JSON.parse(response.body)
    assert json_response["errors"].present?
  end

  test "should not signup with short password" do
    assert_no_difference "User.count" do
      post "/api/v1/auth/signup", params: {
        email: "newuser@example.com",
        password: "short",
        password_confirmation: "short"
      }
    end

    assert_response :unprocessable_entity
    json_response = JSON.parse(response.body)
    assert json_response["errors"].present?
  end

  test "should not signup without password confirmation" do
    assert_no_difference "User.count" do
      post "/api/v1/auth/signup", params: {
        email: "newuser@example.com",
        password: @valid_password
      }
    end

    assert_response :unprocessable_entity
    json_response = JSON.parse(response.body)
    assert json_response["errors"].present?
  end

  # Logout Tests
  test "should logout with valid token" do
    user = User.create!(
      email: @valid_email,
      password: @valid_password,
      password_confirmation: @valid_password
    )

    # Get a token by logging in first
    post "/api/v1/auth/login", params: {
      email: @valid_email,
      password: @valid_password
    }
    login_response = JSON.parse(response.body)
    token = login_response["token"]

    # Now logout
    delete "/api/v1/auth/logout", headers: {
      "Authorization" => "Bearer #{token}"
    }

    assert_response :success
    json_response = JSON.parse(response.body)
    assert_equal "Logged out successfully", json_response["message"]

    # Verify token is in denylist
    payload = Warden::JWTAuth::TokenDecoder.new.call(token)
    assert JwtDenylist.exists?(jti: payload["jti"])
  end

  test "should not logout without token" do
    delete "/api/v1/auth/logout"

    assert_response :bad_request
    json_response = JSON.parse(response.body)
    assert_equal "No token provided", json_response["error"]
  end

  test "should not logout with invalid token" do
    delete "/api/v1/auth/logout", headers: {
      "Authorization" => "Bearer invalid_token_here"
    }

    assert_response :bad_request
    json_response = JSON.parse(response.body)
    assert json_response["error"].present?
    assert json_response["error"].include?("Invalid token")
  end

  test "should logout with expired token" do
    user = User.create!(
      email: @valid_email,
      password: @valid_password,
      password_confirmation: @valid_password
    )

    # Create an expired token manually using the same secret as devise-jwt
    expired_payload = {
      sub: user.id,
      jti: SecureRandom.uuid,
      exp: 1.hour.ago.to_i,
      iat: 2.hours.ago.to_i
    }
    
    require 'jwt'
    # Use the same secret key that devise-jwt uses
    secret = ENV['DEVISE_JWT_SECRET_KEY'].presence || Rails.application.secret_key_base
    expired_token = JWT.encode(expired_payload, secret, 'HS256')

    delete "/api/v1/auth/logout", headers: {
      "Authorization" => "Bearer #{expired_token}"
    }

    # The controller should handle expired tokens gracefully
    assert_response :success
    json_response = JSON.parse(response.body)
    assert json_response["message"].present?
    # Should either be "Token expired, but logged out successfully" or "Token expired"
    assert json_response["message"].include?("expired") || json_response["message"].include?("successfully")
  end

  test "should logout with malformed authorization header" do
    delete "/api/v1/auth/logout", headers: {
      "Authorization" => "InvalidFormat"
    }

    assert_response :bad_request
    json_response = JSON.parse(response.body)
    assert json_response["error"].present?
  end
end

