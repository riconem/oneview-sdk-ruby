# (C) Copyright 2017 Hewlett Packard Enterprise Development LP
#
# Licensed under the Apache License, Version 2.0 (the "License");
# You may not use this file except in compliance with the License.
# You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software distributed
# under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
# CONDITIONS OF ANY KIND, either express or implied. See the License for the
# specific language governing permissions and limitations under the License.

RSpec.shared_examples 'FCNetworkDeleteExample' do |context_name|
  include_context context_name

  describe '#delete' do
    it 'deletes the resource' do
      item = described_class.new(current_client, name: FC_NET_NAME)
      item2 = described_class.new(current_client, name: FC_NET2_NAME)
      item3 = described_class.new(current_client, name: FC_NET3_NAME)

      expect(item.retrieve!).to eq(true)
      expect(item2.retrieve!).to eq(true)
      expect(item3.retrieve!).to eq(true)

      expect { item.delete }.not_to raise_error
      expect { item2.delete }.not_to raise_error
      expect { item3.delete }.not_to raise_error

      expect(item.retrieve!).to eq(false)
      expect(item2.retrieve!).to eq(false)
      expect(item3.retrieve!).to eq(false)
    end
  end
end
