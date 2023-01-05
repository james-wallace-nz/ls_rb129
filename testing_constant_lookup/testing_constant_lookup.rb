system 'clear'

puts '0. Default Object::RUBY_ENGINE'
puts "--------------------------------------------------------------------------------------------------------"

puts Object::RUBY_ENGINE + ' ...Object::RUBY_ENGINE'
# 'ruby ...Object::RUBY_ENGINE'
puts "\n "


puts '1. Override Object::RUBY_ENGINE with global constant:'
puts "--------------------------------------------------------------------------------------------------------"

RUBY_ENGINE = 'global constant'

puts RUBY_ENGINE + ' ...RUBY_ENGINE'
# 'global constant ...RUBY_ENGINE'
puts "\n "


puts '2. Override Object::RUBY_ENGINE with namespace module constant:'
puts "--------------------------------------------------------------------------------------------------------"

module NameSpaceConstant
  RUBY_ENGINE = 'namespace constant'
end

puts NameSpaceConstant::RUBY_ENGINE + ' ...NameSpaceConstant::RUBY_ENGINE'
# namespace constant...NameSpaceConstant::RUBY_ENGINE
puts "\n  Error if called directly without\n   NameSpaceConstant::RUBY_ENGINE initialized\n  ...doesn't use lookup path"
puts "\n "


puts '3a. Override Object::RUBY_ENGINE with mixin module constant not initialized:'
puts "--------------------------------------------------------------------------------------------------------"

module MixinConstant
  # RUBY_ENGINE = 'mixin module constant'
end

class ClassConstant
  include MixinConstant 

  def self.mixin_module_constant
    RUBY_ENGINE
  end

  def mixin_module_constant
    RUBY_ENGINE
  end
end

class_constant_instance = ClassConstant.new

puts ClassConstant.mixin_module_constant + ' ...ClassConstant.mixin_module_constant'

puts class_constant_instance.mixin_module_constant + ' ...class_constant_instance.mixin_module_constant'

puts "\n  Class and instance methods use Global or Default constant\n   if called without MixinConstant::RUBY_ENGINE initialized\n  ...uses lookup path"
puts "\n "


puts '3b. Override Object::RUBY_ENGINE with mixin module constant initialized:'
puts "--------------------------------------------------------------------------------------------------------"

module MixinConstant
  RUBY_ENGINE = 'mixin module constant'
end

class ClassConstant
  include MixinConstant 

  def self.mixin_module_constant
    RUBY_ENGINE
  end

  def mixin_module_constant
    RUBY_ENGINE
  end
end

class_constant_instance = ClassConstant.new

puts MixinConstant::RUBY_ENGINE + ' ...MixinConstant::RUBY_ENGINE'
# mixin module constant ...MixinConstant::RUBY_ENGINE
puts "\n  Error if called without MixinConstant::RUBY_ENGINE initialized\n  ...doesn't use lookup path\n "
puts ClassConstant.mixin_module_constant + ' ...ClassConstant.mixin_module_constant'
# mixin module constant ...ClassConstant.mixin_module_constant
puts class_constant_instance.mixin_module_constant + ' ...class_constant_instance.mixin_module_constant'
# mixin module constant ...class_constant_instance.mixin_module_constant
puts "\n  Class and instance methods use MixinConstant::RUBY_ENGINE if initialized\n  ...uses lookup path"
puts "\n "


puts '4a. Override Object::RUBY_ENGINE with Class constant not initialized: (comment out lines 42 and 71 first)' 
puts "--------------------------------------------------------------------------------------------------------"

class ClassConstant
  # RUBY_ENGINE = 'class constant'

  def self.class_constant
    RUBY_ENGINE
  end

  def class_constant
    RUBY_ENGINE
  end
end

class_constant_instance = ClassConstant.new

puts ClassConstant.class_constant + ' ...ClassConstant.class_constant'
# global constant ...ClassConstant.class_constant
puts class_constant_instance.class_constant + ' ...class_constant_instance.class_constant'
# global constant ...class_constant_instance.class_constant
puts "\n  Class and instance methods use Global or Default constant\n  if called without ClassConstant::RUBY_ENGINE initialized\n  ...uses lookup path"
puts "\n "


puts '4b. Override Object::RUBY_ENGINE with Class constant initialized:' 
puts "--------------------------------------------------------------------------------------------------------"

class ClassConstant
  RUBY_ENGINE = 'class constant'

  def self.class_constant
    RUBY_ENGINE
  end

  def class_constant
    RUBY_ENGINE
  end
end

class_constant_instance = ClassConstant.new

puts ClassConstant::RUBY_ENGINE + ' ...ClassConstant::RUBY_ENGINE'
# class constant ...ClassConstant::RUBY_ENGINE
puts ClassConstant.class_constant + ' ...ClassConstant.class_constant'
# class constant ...ClassConstant.class_constant
puts class_constant_instance.class_constant + ' ...class_constant_instance.class_constant'
# class constant ...class_constant_instance.class_constant_test
puts "\n  Class and instance methods use ClassConstant::RUBY_ENGINE if initialized\n  ...uses lookup path"
puts "\n "


puts '5a. Override Object::RUBY_ENGINE with parent class constant inheritance:' 
puts "--------------------------------------------------------------------------------------------------------"

class ClassConstant
  RUBY_ENGINE = 'parent class constant'

  def self.parent_class_constant
    RUBY_ENGINE
  end

  def parent_class_constant
    RUBY_ENGINE
  end
end

class SubClassConstant < ClassConstant
  def self.sub_class_constant
    RUBY_ENGINE
  end

  def sub_class_constant
    RUBY_ENGINE
  end
end

sub_class_constant_instance = SubClassConstant.new

puts SubClassConstant::RUBY_ENGINE + ' ...SubClassConstant::RUBY_ENGINE'
# parent class constant ...SubClassConstant::RUBY_ENGINE
puts SubClassConstant.parent_class_constant + ' ...SubClassConstant.parent_class_constant'
# parent class constant ...SubClassConstant.parent_class_constant

puts SubClassConstant.sub_class_constant + ' ...SubClassConstant.sub_class_constant'
# parent class constant ...SubClassConstant.sub_class_constant

puts sub_class_constant_instance.parent_class_constant + ' ...sub_class_constant_instance.parent_class_constant'
# parent class constant ...sub_class_constant_instance.parent_class_constant
puts sub_class_constant_instance.sub_class_constant + ' ...sub_class_constant_instance.sub_class_constant'
# parent class constant ...sub_class_constant_instance.sub_class_constant
puts "\n "


puts '5b. Override Object::RUBY_ENGINE with sub class constant:' 
puts "--------------------------------------------------------------------------------------------------------"

class ClassConstant
  RUBY_ENGINE = 'parent class constant'

  def self.parent_class_constant
    RUBY_ENGINE
  end

  def parent_class_constant
    RUBY_ENGINE
  end
end

class SubClassConstant < ClassConstant
  RUBY_ENGINE = 'sub class constant'

  def self.sub_class_constant
    RUBY_ENGINE
  end

  def sub_class_constant
    RUBY_ENGINE
  end
end

sub_class_constant_instance = SubClassConstant.new

puts SubClassConstant::RUBY_ENGINE + ' ...SubClassConstant::RUBY_ENGINE'
# sub class constant ...SubClassConstant::RUBY_ENGINE

puts SubClassConstant.sub_class_constant + ' ...SubClassConstant.sub_class_constant'
# sub class constant ...SubClassConstant.sub_class_constant
puts sub_class_constant_instance.sub_class_constant + ' ...sub_class_constant_instance.sub_class_constant'
# sub class constant ...sub_class_constant_instance.sub_class_constant
puts "\n  Calls SubClassConstant::RUBY_ENGINE when\n  class/instance invoked from SubClassConstant class\n "

puts SubClassConstant.parent_class_constant + ' ...SubClassConstant.parent_class_constant'
# parent class constant ...SubClassConstant.parent_class_constant
puts sub_class_constant_instance.parent_class_constant + ' ...sub_class_constant_instance.parent_class_constant'
# parent class constant ...sub_class_constant_instance.parent_class_constant
puts "\n  Calls ParentClassConstant::RUBY_ENGINE when\n  class/instance invoked from ParentClassConstant class\n "
