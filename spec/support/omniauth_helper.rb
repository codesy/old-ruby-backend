module OmniAuthHelper
  def login_with_github
    visit "/users/auth/github"
  end
end
