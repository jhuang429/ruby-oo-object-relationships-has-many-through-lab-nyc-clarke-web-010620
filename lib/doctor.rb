class Doctor
    def initialize(name)
        @name = name
        @@all << self
    end

    @@all = []
     attr_accessor :name

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |appt|
            appt.doctor == self
        end
    end

    def patients
        self.appointments.map do |appt|
            appt.patient
        end
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end




end
