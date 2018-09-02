class Patient

  @@all = []

  def self.all
      @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    app = Appointment.new(self, doctor, date)
    app
  end

  def appointments
    Appointment.all.select do |app_patient|
    app_patient.patient
    end
  end

  def doctors
    self.appointments.map do |app|
      app.doctor
  end
end

end #class end
