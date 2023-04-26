class Team
  def initialize(
    use_labels: nil,
    compact: nil,
    exclude_labels: nil,
    exclude_titles: nil,
    quotes_days: nil,
    repos: nil,
    quotes: nil,
    slack_channel: nil
  )
    @use_labels = (use_labels.nil? ? false : use_labels)
    @compact = (compact.nil? ? false : compact)
    @quotes_days = quotes_days || []
    @exclude_labels = exclude_labels || []
    @exclude_titles = exclude_titles || []
    @repos = repos || []
    @quotes = quotes || []
    @channel = slack_channel
  end

  attr_reader(*%i[
    use_labels
    quotes_days
    compact
    exclude_labels
    exclude_titles
    repos
    quotes
    channel
  ])
end
