#
# Be sure to run `pod lib lint OpenAPIClient.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = "OpenAPIClient"
    s.version          = "1.0.0"

    s.summary          = "SimpleBilly API"
    s.description      = <<-DESC
                         Simplebilly API - Bookkeeping, CRM, ERP. Multi-tenant API: a tenant is isolated and routed by subdomain (or a configured custom domain) under the base domain.  ## Rate limiting All endpoints are rate-limited per client IP: **100 requests per minute** on API routes and **5 requests per minute** on authentication routes. Exceeding a limit returns `429 Too Many Requests`; the window resets after 60 seconds.
                         DESC

    s.platform     = :ios, '7.0'
    s.requires_arc = true

    s.framework    = 'SystemConfiguration'

    s.homepage     = "https://github.com/openapitools/openapi-generator"
    s.license      = "Proprietary"
    s.source       = { :git => "https://github.com/openapitools/openapi-generator.git", :tag => "#{s.version}" }
    s.author       = { "OpenAPI" => "team@openapitools.org" }

    s.source_files = 'OpenAPIClient/**/*.{m,h}'
    s.public_header_files = 'OpenAPIClient/**/*.h'


    s.dependency 'AFNetworking', '~> 3'
    s.dependency 'JSONModel', '~> 1.2'
    s.dependency 'ISO8601', '~> 0.6'
end
