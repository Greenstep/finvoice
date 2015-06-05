require 'rfinvoice/invoice/seller_account_id'
require 'rfinvoice/invoice/seller_bic'

module RFinvoice
  class SellerAccountDetails < Model
    add_complex_properties %w(SellerAccountID SellerBic), required: true
  end
end