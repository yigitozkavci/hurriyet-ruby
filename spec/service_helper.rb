require 'hurriyet/service/api_operation/list'
RSpec::Matchers.define :include_operation do |expected|
  match do |actual|
    actual.class.included_modules.include?(operation_class expected)
  end
end

def operation_class(name)
  case name
  when 'list'
    Hurriyet::ApiOperation::List
  when 'show'
    Hurriyet::ApiOperation::Show
  end
end
