# (C) Copyright 2016 Hewlett Packard Enterprise Development LP
#
# Licensed under the Apache License, Version 2.0 (the "License");
# You may not use this file except in compliance with the License.
# You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software distributed
# under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
# CONDITIONS OF ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require_relative '../../api200/network_set'
require_relative 'scope'

module OneviewSDK
  module API300
    module C7000
      # Network set resource implementation for API300 C7000
      class NetworkSet < OneviewSDK::API200::NetworkSet
        include OneviewSDK::API300::C7000::Scope::ScopeHelperMethods

        # Create a resource object, associate it with a client, and set its properties.
        # @param [OneviewSDK::Client] client The client object for the OneView appliance
        # @param [Hash] params The options for this resource (key-value pairs)
        # @param [Integer] api_ver The api version to use when interracting with this resource.
        def initialize(client, params = {}, api_ver = nil)
          @data ||= {}
          # Default values:
          @data['connectionTemplateUri'] ||= nil
          @data['nativeNetworkUri'] ||= nil
          @data['networkUris'] ||= []
          @data['type'] ||= 'network-setV300'
          super
        end

      end
    end
  end
end
