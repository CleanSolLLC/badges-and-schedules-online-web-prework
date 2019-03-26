


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



def printer(attendees)
  badges_and_room_assignments = []
  badges_and_room_assignments  = batch_badge_creator(attendees)
      badges_and_room_assignments.each {|guest_info|
        puts guest_info
    badges_and_room_assignments = assign_rooms(attendees)
  }

    badges_and_room_assignments.each {|guest_info|
      puts guest_info
  }

end
