##############################################################################
#  Copyright 2011 Service Computing group, TU Dortmund
#  
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#  
#      http://www.apache.org/licenses/LICENSE-2.0
#  
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
##############################################################################

##############################################################################
# Description: OCCI Infrastructure IPNetworking Mixin
# Author(s): Hayati Bice, Florian Feldhaus, Piotr Kasprzak
##############################################################################

require 'occi/CategoryRegistry'
require 'occi/core/Mixin'

module OCCI
  module Infrastructure

    class Ipnetworking < OCCI::Core::Mixin
      begin
        # Define actions
        actions = []

        related = []
        entities = []

        term    = "ipnetwork"
        scheme  = "http://schemas.ogf.org/occi/infrastructure/network#"
        title   = "IP Network Mixin"

        attributes = OCCI::Core::Attributes.new()
        attributes << OCCI::Core::Attribute.new(name = 'occi.network.address',    mutable = true, required = false,  type = "string", range = "", default = "")
        attributes << OCCI::Core::Attribute.new(name = 'occi.network.gateway',    mutable = true, required = false,  type = "string", range = "", default = "")
        attributes << OCCI::Core::Attribute.new(name = 'occi.network.allocation', mutable = true, required = false,  type = "string", range = "", default = "")
          
        MIXIN = OCCI::Core::Mixin.new(term, scheme, title, attributes, actions, related, entities)
        
        OCCI::CategoryRegistry.register(MIXIN)
      end
    end

  end
end