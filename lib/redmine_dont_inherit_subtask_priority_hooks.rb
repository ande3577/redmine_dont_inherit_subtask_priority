module RedmineDontInheritSubtaskPriority
  class Hooks < Redmine::Hook::ViewListener
    render_on :view_issues_form_details_bottom, :partial => 'issues/dont_inherit_subtask_priority'
  end
end
