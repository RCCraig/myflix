require 'spec_helper'

describe "Deactivate user on failed charge" do
  let(:event_data) do
    {
      "id"=> "evt_103l82246B16QpMhsGAqb8yf",
      "created"=> 1396158403,
      "livemode"=> false,
      "type"=> "charge.failed",
      "data"=> {
        "object"=> {
          "id"=> "ch_103l82246B16QpMhsHaIqYOD",
          "object"=> "charge",
          "created"=> 1396158403,
          "livemode"=> false,
          "paid"=> false,
          "amount"=> 999,
          "currency"=> "usd",
          "refunded"=> false,
          "card"=> {
            "id"=> "card_103l81246B16QpMhD0mZofRN",
            "object"=> "card",
            "last4"=> "0341",
            "type"=> "Visa",
            "exp_month"=> 5,
            "exp_year"=> 2015,
            "fingerprint"=> "OaqFkaS9UsRKmR2n",
            "customer"=> "cus_3l7x42Pi3dmd2F",
            "country"=> "US",
            "name"=> nil,
            "address_line1"=> nil,
            "address_line2"=> nil,
            "address_city"=> nil,
            "address_state"=> nil,
            "address_zip"=> nil,
            "address_country"=> nil,
            "cvc_check"=> "pass",
            "address_line1_check"=> nil,
            "address_zip_check"=> nil
          },
          "captured"=> false,
          "refunds"=> [],
          "balance_transaction"=> nil,
          "failure_message"=> "Your card was declined.",
          "failure_code"=> "card_declined",
          "amount_refunded"=> 0,
          "customer"=> "cus_3l7x42Pi3dmd2F",
          "invoice"=> nil,
          "description"=> "payment fail",
          "dispute"=> nil,
          "metadata"=> {},
          "statement_description"=> nil
        }
      },
      "object"=> "event",
      "pending_webhooks"=> 1,
      "request"=> "iar_3l82vU8XX0mUgu"
    }
  end

  it "deactivates a user with the webhook data from stripe for a charge failed", :vcr do
    alice = Fabricate(:user, customer_token: "cus_3l7x42Pi3dmd2F") 
    post "/stripe_events", event_data
    expect(alice.reload).not_to be_active
  end
end