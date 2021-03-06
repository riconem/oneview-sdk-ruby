# (C) Copyright 2018 Hewlett Packard Enterprise Development LP
#
# Licensed under the Apache License, Version 2.0 (the "License");
# You may not use this file except in compliance with the License.
# You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software distributed
# under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
# CONDITIONS OF ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require_relative '../api500/deployment_plan'

module OneviewSDK
  module ImageStreamer
    module API600
      # Deployment Plan resource implementation for Image Streamer
      class DeploymentPlan < OneviewSDK::ImageStreamer::API500::DeploymentPlan

        # Retrieves the Deployment Plan details as per the selected attributes.
        # @return [Hash] The OS Deployment Plan.
        def get_osdp
          ensure_client && ensure_uri
          path = "#{BASE_URI}/#{@data['uri'].split('/').last}/osdp/"
          response = @client.rest_get(path, { 'Content-Type' => 'none' }, @api_version)
          @client.response_handler(response)
        end
      end
    end
  end
end
