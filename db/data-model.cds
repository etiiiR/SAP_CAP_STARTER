namespace my.Travel;

entity Data {
  key client : Integer;
  key travel_uuid: UUID;
  travel_id: String;
  agency_id: String;
  customer_id: String;
  begin_date: Date;
  end_date: Date;
  booking_fee: Double;
  total_price: Double;
  currency_code: String;
  description: String;
  overall_status: String;
  created_at: Date;
  created_by: String;
  last_changed_by: String;
  last_changed_at: Date;
  local_last_changed_at: DateTime;

}
