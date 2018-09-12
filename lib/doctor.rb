class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
  end

  def appointments
    # Iterates through all appointments
    # and finds those belonging to this doctor.
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    # Iterates over that doctor's appointments
    # and collects the patient that
    # belongs to each appointment.
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end.map do |appointment|
      appointment.patient
    end
  end

end
