module PostsHelper
  def create_post
    out = ''
    out << link_to('Create Post', new_post_path, class: 'nav-link active') if user_signed_in?
    out.html_safe
  end

  def logout
    out = ''
    out << link_to('Logout', destroy_user_session_path, method: :delete, class: 'nav-link active') if user_signed_in?
    out.html_safe
  end

  def sign_up
    out = ''
    out << link_to('Sign Up', new_user_registration_path, class: 'nav-link active') unless user_signed_in?
    out.html_safe
  end

  def login
    out = ''
    out << link_to('Login', new_user_session_path, class: 'nav-link active') unless user_signed_in?
    out.html_safe
  end
end
