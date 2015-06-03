module RFinvoice
  module Coercion
    module Helper
      module Pattern
        def coerce_for_pattern(value)
          if (match = self.class::PATTERN.match(value))
            if match[0].length == value.length
              value
            else
              return_nil_or_raise_for_pattern
            end
          else
            return_nil_or_raise_for_pattern
          end
        end

        def return_nil_or_raise_for_pattern
          if ::RFinvoice.configuration.raise_on_broken_value
            fail ::RFinvoice::Error::BrokenValueFormat, "#{name} must match #{self.class::PATTERN} pattern"
          else
            ::RFinvoice.logger.info 'Value have broken format'
            nil
          end
        end
      end
    end
  end
end
