# python3-tecan-genesis

Python module for flow control of  Tecan Genesis RSP 200 and other devices.

## What's a Tecan Device?

Tecan devices are used to automate pipetting activities.

## Architecture

 1. Take a human readable input format to define pipetting processes.
 2. Translate these steps into commands that the Tecan device read via serial
    connector.
 3. Communicate the commands to the Tecan device and keep track of the device's
    status.

## Development process

 1. Send simple commands to device.
 2. Send a series of commands to device.
 3. Automate basic pipetting activity:
     1. Move LIHA arm to input deck
     2. Move pipetting tips downward to input deck
     3. Suck in material
     4. Move pipetting tips upward
     5. Move LIHA arm to output deck
     6. Move pipetting tips downward to output deck
     7. Push out material
     8. Move pipetting tips upward
     9. Move LIHA arm back to initial position
  4. Automate whole simple process:
     1. Initialize Tecan device
     2. Clean Tecan device
     3. Do a basic pipetting activity (described above)
     4. Clean Tecan device
  5. Develop human readable process defition format.
  6. Automate translation of process files to actual commands.

## Terms

 - *Tecan* - name of company that created automated pipetting system.
 - *LiHa* - Liquid Handling; used to describe a robotic arm that can do the liquid
            pickup and set-down in the Tecan system.
 - *RoMa* - Robotic Manipulator Arm; similar to LiHa but moves palettes instead
            of liquids.
 - *Wash* - Clean the tips
 - *Flush* - push clean water through the whole piping system
 - *FaWa* - fast wash; another way to say *flush*
 - *Waste* - there are two types of waste: fluid waste, e.g. from cleaning, and
             one-time tips
 - *Init* - putting all the arms of the Tecan device in their starting
            position, checking all the hardware components, and locking the
            position
 - *Aspirate* - a step of the pipetting activity; suck in some material into
                the tip
 - *Dispense* - a step of the pipetting activity; push out some material from
                the tip
 - *Delute* - TODO
 - *IV* - the position for input into the 3-way valve that controls the water
          level in the tips
 - *OV* - the position for output into the 3-way valve that controls the water
          level in the tips
