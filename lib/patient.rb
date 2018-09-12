class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
  end

  def appointments
    # Iterates through the appointments array
    # and returns appointments that belong
    # to the patient.
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    # Iterates over that patient's appointments
    # and collects the doctor that belongs to
    # each appointment.
    Appointment.all.select do |appointment|
      appointment.patient == self
    end.map do |appointment|
      appointment.doctor
    end
  end

end
