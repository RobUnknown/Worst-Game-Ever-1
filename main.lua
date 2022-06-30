--variable defining at the beginning
should_we_end = false
times_empty_line_has_been_printed = 0
distance_from_left_side = 1


io.write('This is what you are typing:')


--the main repeat
repeat
    --reading the users input and changing variables accordingly
    user_input = io.read()
    if (user_input == 'stop') then 
        should_we_end = true
    elseif user_input == 'd' then
        distance_from_left_side = distance_from_left_side + 2
    elseif user_input == 'a' then
        if distance_from_left_side > 1 then
            distance_from_left_side = distance_from_left_side - 2
        end
    end

    --pushing the previous frame off the screen
    repeat
        print ' '
        times_empty_line_has_been_printed = times_empty_line_has_been_printed + 1
    until times_empty_line_has_been_printed == 20
    
    --(re)setting variables
    times_empty_line_has_been_printed = 0
    local spaces_from_left_side = 0


    --printing the head
    print('')
    repeat
        io.write (' ')
        spaces_from_left_side = spaces_from_left_side + 1
    until spaces_from_left_side == distance_from_left_side

    io.write('  o/')
    spaces_from_left_side = 0

    --printing the body
    print('')
    repeat
        io.write (' ')
        spaces_from_left_side = spaces_from_left_side + 1
    until spaces_from_left_side == distance_from_left_side

    io.write(" /#")
    spaces_from_left_side = 0

    --printing the legs
    print('')
    repeat
        io.write (' ')
        spaces_from_left_side = spaces_from_left_side + 1
    until spaces_from_left_side == distance_from_left_side

    io.write(" / \\")
    spaces_from_left_side = 0

    --ready-ing the next line
    print(' ')
    io.write('This is what you are typing:')
until should_we_end == true
