#encoding: utf-8
class Delivery < ActiveRecord::Base

  attr_accessible :address, :car_id, :distance, :driver_id, :customer_name, 
    :phone, :time, :trip_time, :item_name
  validates :time, presence: true
  validates :trip_time, presence: true

  validates_each :time do |record, attr, value|
    if !(attr.blank? or record.trip_time.blank?)
      deliveries = Delivery.where(time: value..value+record.trip_time.minutes)
      record.errors.add attr, :interfere if deliveries.length>0
    end  
  end

end