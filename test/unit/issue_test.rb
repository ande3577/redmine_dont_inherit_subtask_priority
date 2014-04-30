require File.expand_path('../../test_helper', __FILE__)

class IssueTest < ActiveSupport::TestCase
  extend NotificationEvents
  fixtures :projects, :users, :members, :member_roles, :roles,
           :groups_users,
           :trackers, :projects_trackers,
           :enabled_modules,
           :versions,
           :issue_statuses, :issue_categories, :issue_relations, :workflows,
           :enumerations,
           :issues, :journals, :journal_details,
           :custom_fields, :custom_fields_projects, :custom_fields_trackers, :custom_values,
           :time_entries

  def setup
    ActionMailer::Base.deliveries.clear
  end

  def teardown
  end

  def test_dont_change_parent_issue_when_changing_child_issue
    issue = Issue.generate_with_descendants!
    child_issue = issue.children.first
    print  "\nchild priority = #{child_issue.priority.to_s}\n"
    print "\nparent priority = #{issue.priority.to_s}\n"

    initial_priority = issue.priority

    child_issue.priority = IssuePriority.find(6)
    child_issue.save!
    issue.reload


    assert_equal initial_priority, issue.priority
  end

  
  private

end