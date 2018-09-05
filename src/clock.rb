class Clock
attr_reader(:time_hours, :time_minutes)
    @time_hours = 0
    @time_minutes = 0

    def initialize(time_hours, time_minutes)
    #TIME-SETUP
        @time_hours = time_hours
        @time_minutes = time_minutes
    end



    def add_time(minutes)
        @time_minutes = @time_minutes + minutes
        if time_minutes >= 60
            @time_hours += 1
            @time_minutes -= 60
        end
    end
    def display
        if @time_minutes <= 10
        time_total = "The time is #{@time_hours}:0#{@time_minutes} am".colorize(:light_red)
        puts time_total.underline
        else
            time_total = "The time is #{@time_hours}:#{@time_minutes} am".colorize(:light_red)
        puts time_total.underline
        end
    end
    def late_status
        if @time_hours >= 9 && @time_minutes >= 30
            return true
        else
            return false
    end

end
end