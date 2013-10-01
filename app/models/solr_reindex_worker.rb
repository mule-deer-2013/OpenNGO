class SolrReindexWorker
	include Sidekiq::Worker

	def perform(class_name)
		klass = Kernel.const_get(class_name)
		klass.index
	end
end
