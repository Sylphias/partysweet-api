module Resources
  class Base < Grape::API
    mount Resources::V1::Base
    if Rails.env.development? || Rails.env.test?
      puts "========== API ROUTES =========="
      puts self::routes
      puts "================================"
      puts ""
    end
  end
end