require 'spec_helper'

describe "Create payment on successful charge" do
  let(:event_data) do
    {
      "id"=> "evt_103ksb246B16QpMhVrPzfY1L",
      "created"=> 1396101017,
      "livemode"=> false,
      "type"=> "charge.succeeded",
      "data"=> {
        "object"=> {
          "id"=> "ch_103ksb246B16QpMhmh0fyOKs",
          "object"=> "charge",
          "created"=> 1396101017,
          "livemode"=> false,
          "paid"=> true,
          "amount"=> 999,
          "currency"=> "usd",
          "refunded"=> false,
          "card"=> {
            "id"=> "card_103ksb246B16QpMh3CsCrY7P",
            "object"=> "card",
            "last4"=> "4242",
            "type"=> "Visa",
            "exp_month"=> 11,
            "exp_year"=> 2014,
            "fingerprint"=> "1yVFObGxyd7k5MW8",
            "customer"=> "cus_3ksbApWAZi3WgN",
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
          "captured"=> true,
          "refunds"=> [],
          "balance_transaction"=> "txn_103ksb246B16QpMhkQyenOZz",
          "failure_message"=> nil,
          "failure_code"=> nil,
          "amount_refunded"=> 0,
          "customer"=> "cus_3ksbApWAZi3WgN",
          "invoice"=> "in_103ksb246B16QpMh9XeewnZw",
          "description"=> nil,
          "dispute"=> nil,
          "metadata"=> {},
          "statement_description"=> "Myflix Fee"
        }
      },
      "object"=> "event",
      "pending_webhooks"=> 1,
      "request"=> "iar_3ksbNCC2eGmc3Z"
    }
  end
  it "creates a payment with the webhook from stripe for charge succeeded", :vcr do    
    post "/stripe_events", event_data
    expect(Payment.count).to eq(1)
  end

  it "creates the payment associated with the user", :vcr do
    alice = Fabricate(:user, customer_token: "cus_3ksbApWAZi3WgN")
    post "/stripe_events", event_data
    expect(Payment.first.user).to eq(alice)
  end

  it "creates the payment with the amount", :vcr do
    alice = Fabricate(:user, customer_token: "cus_3ksbApWAZi3WgN")
    post "/stripe_events", event_data
    expect(Payment.first.amount).to eq(999) 
  end

  it "creates the payment with reference id", :vcr do
    alice = Fabricate(:user, customer_token: "cus_3ksbApWAZi3WgN")
    post "/stripe_events", event_data
    expect(Payment.first.reference_id).to eq("ch_103ksb246B16QpMhmh0fyOKs") 
  end
end