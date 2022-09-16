# hash diff using active support
require 'active_support'

module SebastianHash
  refine Hash do
    def my_diff(hash)
      self.except(*hash.keys)
    end
  end
end

