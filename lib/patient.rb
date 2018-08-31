class Patient
  @@all=[]
  attr_reader :name

  def initialize(name)
    @name = name
    @@all<<self
  end

  def new_appointment(doctor,date)
    appointment = Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    self.appointments.map do |appointment|
      appointment.doctor
    end
  end

  def self.all
    @@all
  end

end
