class Democracy::Candidate
  attr_reader :name, :description

  def initialize(name, description)
    @name = name
    @description = description
  end
end
