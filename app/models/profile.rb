class Profile
  include ActiveModel::Serializers::JSON
  attr_accessor :lastName, :firstName
  def attributes=(hash)
    hash.each do |key, value|
      send("#{key}=", value)
    end
  end

  def attributes
    instance_values
  end
end