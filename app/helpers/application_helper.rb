# frozen_string_literal: true

module ApplicationHelper
  # Generates link to an S3 bucket url based on a given S3 Object key
  #
  # @param [String] s3_key A key pointing to an object in S3 (not including the bucket name prefix)
  # @note Keys should generally not have a leading '/' in the key.
  # @note Constructed manually instead of through ActiveStorage because this image is not tied to a real model
  # @return [String]
  def recipe_bucket_asset_url(s3_key)
    "https://#{Rails.configuration.x.application_bucket}.s3.amazonaws.com/#{s3_key}"
  end

  # Adds additional parameters as query string parameters to a url generated by url_for
  #
  # @param [String] url Unmodified URL to add additional parameters onto
  # @param [Hash] additional_params Additional parameters to add to url as query string parameters
  # @return [String] New url modified with additional query string parameters
  def decorated_query_url_for(url, additional_params = {})
    uri = URI.parse(url)
    current_params = Rack::Utils.parse_query(uri.query)
    final_params = current_params.merge(additional_params)
    uri.query = Rack::Utils.build_query(final_params)
    uri.to_s
  end
end
