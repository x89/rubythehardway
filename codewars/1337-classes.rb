def leet_classes
  leets = Array.new
  $names = ('aaa'..'zzz').to_a.slice(0, 1337)
  $names.each do |name|
    $name = name
    c = Class.new do
      define_method("im_#{$name}") { Object.new }
      class << self
        define_method("cm_#{$name}") { Object.new }
      end
    end
    Object.const_set("C#{$name}", c)
    leets.push(c)
  end
  leets
end
