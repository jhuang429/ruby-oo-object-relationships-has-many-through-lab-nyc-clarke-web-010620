class Appointment
    def initialize(date, patient, doctor)
        @date = date
        @doctor = doctor
        @patient = patient
        @@all << self
    end

    @@all = []
     attr_accessor :patient, :doctor, :date

    def self.all
        @@all
    end



end
