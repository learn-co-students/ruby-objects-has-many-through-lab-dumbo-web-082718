class Doctor

attr_reader :name

@@all = []

def self.all
@@all
end


def initialize(name)
  @name = name
  @@all << self
end

def new_appointment(patient, date)
  Appointment.new(patient, self, date)
end


def appointments
  Appointment.all.select do |app|
    app.doctor == self
  end
end


def patients

self.appointments.map do |app_patient|
  app_patient.patient
  end
end




end #class end
