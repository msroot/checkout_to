require "checkout_to/version"

module CheckoutTo
  class Error < StandardError; end
  class CLI 
    
    def self.start(args)
      raise Error, 'Give a name of the brach to checkout' unless args.any?
      
      name = args.compact.map(&:downcase).join('_')
      branch = "#{Time.now.to_i}_#{name}"
      
      `git checkout -b #{branch}`
    end
  end
  
end
