# (C) Copyright 2017 Hewlett Packard Enterprise Development LP
#
# Licensed under the Apache License, Version 2.0 (the "License");
# You may not use this file except in compliance with the License.
# You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software distributed
# under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
# CONDITIONS OF ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require_relative '../../api300/synergy/unmanaged_device'

module OneviewSDK
  module API500
    module Synergy
      # Unmanaged Device resource implementation for API500 Synergy
      class UnmanagedDevice < OneviewSDK::API300::Synergy::UnmanagedDevice
      end
    end
  end
end
