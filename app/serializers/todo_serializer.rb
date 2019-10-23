class TodoSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :complete
end
