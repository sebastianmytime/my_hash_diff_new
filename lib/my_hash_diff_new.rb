# hash diff using active support

module SebastianHash
  refine Hash do
    def my_diff(hash)
      self.except(*hash.keys)
    end
  end
end

using SebastianHash

puts({a:1, b:2, c:3}.my_diff({c:3, b:2}))


hash = { a: 1, b: 2, c: 3}
puts(hash.except(:c))     # => { a: true, b: false }
puts(hash.except(:a, :b)) # => { c: nil }