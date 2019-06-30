require 'google/cloud/datastore'

class Sample
  def self.all
    datastore = Google::Cloud::Datastore.new(
      project: Rails.application.config.database_configuration[Rails.env]["dataset_id"]
    )
    query = datastore.query("Samples")
    datastore.run(query)
  end
end
