# frozen_string_literal: true

class Profile < ApplicationRecord
  extend Pagy::Searchkick

  validates_presence_of :name
  validates :github_url, presence: true, uniqueness: true, url: { host: /github\.com/ }
  validates :shortened_url, url: { host: /tinyurl\.com/ }
  before_save :shorten_url, if: :will_save_change_to_github_url?
  after_update :fetch_profile, if: :saved_change_to_github_url?
  after_update_commit :broadcast_profile
  after_save :reindex
  enum indexing_status: { in_progress: 0, completed: 1, error: 2 }

  has_and_belongs_to_many :organizations

  searchkick

  # :nocov:
  def search_data
    {
      name:,
      username:,
      location:,
      organizations: organizations.pluck(:name).join(","),
    }
  end
  # :nocov:

  private

  def fetch_profile = FetchProfileJob.perform_async(id)
  def broadcast_profile = Profiles::BroadcastUpdate.call(profile: self)

  def shorten_url
    result = UrlShortener.call(url: github_url)
    if result.success?
      self.shortened_url = result.response.body
    else
      errors.add(:base, "Failed to shorten Github URL: #{result.errors}", strict: true)
    end
  end
end
