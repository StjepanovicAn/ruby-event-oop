class Event
	
	attr_accessor :start_date
	attr_accessor :duration
	attr_accessor :title
	attr_accessor :attendees


	def initialize(event_date, event_duration, event_title, event_attendees)
		@start_date = Time.parse(event_date)
		@duration = event_duration
		@title = event_title
		@attendees = event_attendees

	end 

	def postpone_24h
		@start_date = @start_date + 86400
	end

	def end_date
		return @start_date + @duration * 60
	end

	def is_past?
		if @start_date < Time.now
			return true
		else
			return false
		end
	end

	def is_futur?
		if @start_date > Time.now
			return true
		else
			return false
		end
	end

	def is_soon?
		if @start_date - Time.now < 1800
			return true
		else
			return false
		end
	end

	def to_s
		strfy = ""
		@attendees.each{|attendee| 
			if attendee != @attendees.last 
				strfy = strfy + attendee + ", "
			else 
				strfy = strfy + attendee 
			end
			}

		puts ">Titre : #{@title}"
		puts ">Date de début : #{@start_date}"
		puts ">Durée : #{@duration} minutes"
		puts ">Invité.e.s : #{strfy}"
	end

end