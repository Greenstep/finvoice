require 'spec_helper'

%w(length width height).each do |key|
  RSpec.describe "RFinvoice::Package#{key.classify}".constantize do
    subject { Fabricate("package_#{key}".to_sym) }
    it { is_expected.to have_virtus_attribute(:value).of_type(::RFinvoice::Type::String0_14).with_required(true) }
    it { is_expected.to have_virtus_attribute(:quantity_unit_code).of_type(::RFinvoice::Type::Token0_14).with_required(false) }
  end
end