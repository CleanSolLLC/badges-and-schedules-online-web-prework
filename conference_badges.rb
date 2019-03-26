


def badge_maker(name)
  string = "Hello, my name is #{name}."
  return string
end

def batch_badge_creator(attendees)
  badge = []
  attendees.each {|list|
    badge_greeting = badge_maker(list)
    badge.push(badge_greeting)
}
return badge
end


def assign_rooms(attendees)
  room_assignments = []
  index = 0
  room_num = 1

  attendees.each {|list|
    attendee_message = "Hello, #{list}! You'll be assigned to room #{room_num}!"
      room_assignments[index] = attendee_message
      index +=1
      room_num +=1
  }
  return room_assignments
end



def printer
  badge_output = []
  room_assignment_output = []
  badge_output  = batch_badge_creator
  room_assignment_output = assign_rooms
  badge_output.each {|badge|
    puts badge
  }
  room_assignment_output.each{|room_assignment|
    puts room_assignment
  }
end

attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]
