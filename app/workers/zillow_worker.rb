class ZillowWorker
  include Sidekiq::Worker

  def perform(name, count)
    puts 'Collecting info from URL'
  end

end
