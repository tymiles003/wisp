json.array!(@jobs) do |job|
  json.extract! job, :id, :description, :website, :info
  json.url job_url(job, format: :json)
end
