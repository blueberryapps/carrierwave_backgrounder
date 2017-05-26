module CarrierWave
  module Backgrounder

    module Delay
      def cache_versions!(new_file)
        super if proceed_with_versioning?
      end

      def store_versions!(*args)
        super if proceed_with_versioning?
      end

      def process!(new_file=nil)
        super if proceed_with_versioning?
      end

      private

      def proceed_with_versioning?
        true
      end
    end # Delay

  end # Backgrounder
end # CarrierWave
