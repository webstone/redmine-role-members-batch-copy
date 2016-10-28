require 'redmine'

require 'roles_controller_patch'

if Rails::VERSION::MAJOR < 3
    require 'dispatcher'
    object_to_prepare = Dispatcher
else
    object_to_prepare = Rails.configuration
end

Redmine::Plugin.register :sfl_role_members_batch_copy do

    name 'SFL Role Members Batch Copy'
    author 'David Côté-Tremblay'
    description 'Copy in batch members of a role to another role.'
    version '0.0.1'
    url 'https://gitlab.savoirfairelinux.com/redmine/SFL-Role-Members-Batch-Copy'
    author_url 'http://savoirfairelinux.com'

end
