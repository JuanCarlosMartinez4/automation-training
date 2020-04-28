# frozen_string_literal: true

# Manages Flight information.
class Flight
  attr_accessor :origin
  attr_accessor :destination
  attr_accessor :passengers
  attr_accessor :capacity

  # Initializes Flight.
  def initialize
    @passengers = []
  end

  # Verifies if there is sets available on the flight.
  # @return true if there is and if not false.
  def is_seats_available
    @passengers.size < @capacity? true :false
  end

  # Adds a passenger to flight.
  # @param passenger object.
  def add_passenger(passenger)
    @passengers.push(passenger)
  end
end

# Manages Passenger information
class Passenger
  attr_accessor :name
  attr_accessor :last_name
  attr_accessor :address
  attr_accessor :phone
  attr_accessor :year
  attr_accessor :type

  # Initializes Passenger.
  def initialize
    @type = 'ADULT'
  end

  # Adds passenger information
  # to insert this method ask for values.
  def add_passenger_information
    print "Enter passenger's name: "
    @name = gets.chomp.to_s
    print "Enter last name: "
    @last_name = gets.chomp.to_s
    print "Enter address: "
    @address = gets.chomp.to_s
    print "Enter phone: "
    @phone = gets.chomp.to_s
    print "Enter year: "
    @year = gets.chomp.to_i
    @year < 18 ? @type = 'CHILD': @type
  end
end

# Manages TicketOffice.
class TicketOffice

  # Initializes ticket office.
  # Sets tickets quantity.
  def initialize
    @flights = {}
  end

  # Adds flight information
  # to insert this method ask for values.
  def add_flights
    new_flight = Flight.new
    print "Enter flight's ID: "
    id = gets.chomp.to_s
    print "Enter flight's origin: "
    new_flight.origin = gets.chomp.to_s
    print "Enter flight's destination: "
    new_flight.destination = gets.chomp.to_s
    print "Enter the number of flight's seats: "
    new_flight.capacity = gets.chomp.to_i
    @flights.store(id, new_flight)
  end

  # Verifies if flight's id exist.
  # @param flight_id value.
  # @return true if there is and if not false.
  def is_there_flight_id(flight_id)
    @flights.each do |key, value|
      if key.eql? flight_id
        return true
      end
    end
    false
  end

  # Verifies if flight is full.
  # @param flight_id value.
  # @return true if there is and if not false.
  def is_flight_full(flight_id)
    @flights.each do |key, value|
      if key.eql? flight_id
        return value.is_seats_available
      end
    end
  end

  # Adds a passenger to flight
  # verifying if the flight exist and
  # is it not full.
  def add_passenger_to_flight
    print 'select a flight: '
    flight_id = gets.chomp.to_s
    unless is_there_flight_id(flight_id)
      return p "flight ID #{flight_id} doesn't exist"
    end
    unless is_flight_full(flight_id)
      return p 'should pickup another flight'
    end
    passenger = Passenger.new
    passenger.add_passenger_information
    @flights.each do |key, value|
      if key.eql? flight_id
        value.add_passenger(passenger)
      end
    end
    p @flights.inspect
  end
end

# Main menu to test the exercise.
ticket = TicketOffice.new
ticket.add_flights
ticket.add_passenger_to_flight
ticket.add_passenger_to_flight
ticket.add_passenger_to_flight
