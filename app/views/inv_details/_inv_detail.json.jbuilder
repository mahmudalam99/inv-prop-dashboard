json.extract! inv_detail, :id, :first_name, :last_name, :email, :phone, :tfn, :dob, :balance, :created_at, :updated_at
json.url inv_detail_url(inv_detail, format: :json)
