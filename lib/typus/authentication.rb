require "typus/authentication/none"
require "typus/authentication/basic"
require "typus/authentication/advanced"

class AdminUserFake

  def can?(*args)
    true
  end

  def cannot?(*args)
    !can?(*args)
  end

  def is_root?
    true
  end

  def is_not_root?
    !is_root?
  end

  def resources
    Typus::Configuration.roles[role].compact
  end

  def role
  end

  def name
  end

end
