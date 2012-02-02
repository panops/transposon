module Transposon
  
  # Transposon system version. We follow the Semantic Versioning Standard.
  # Note that this is not any protocol version. Individual protocol transports
  # have their own version definitions and compatibilities, see their individual
  # protocol version files for more information.
  # The Semantic Versioning Standard standards document is located at http://semver.org/
  module Version
    
    def self.major
      "0"
    end
    
    def self.minor
      "0"
    end
    
    def self.patch
      "1alpha"
    end
    
    def self.to_standard_version_s
      [major, minor, patch].join('.')
    end
    
  end
end
