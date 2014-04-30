require_dependency 'redmine_dont_inherit_subtask_priority_hooks'
require_dependency 'dont_inherit_subtask_priority_issue_patch'

Redmine::Plugin.register :redmine_dont_inherit_subtask_priority do
  name 'Redmine Dont Inherit Subtask Priority plugin'
  author 'David S Anderson'
  description 'Prevent a subtask from changing its parent issues priority'
  version '0.0.1'
  url 'https://github.com/ande3577'
  author_url 'https://github.com/ande3577/redmine_dont_inherit_subtask_priority'
end
