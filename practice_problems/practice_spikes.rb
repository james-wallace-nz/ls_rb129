### Complete the spikes, ensuring that they receive the requested functionality.

puts '1. Sports Team'
puts ''

# Design a Sports Team (Author Unknown...thank you!)

# - Include 4 players (attacker, midfielder, defender, goalkeeper)
# - All the players’ jersey is blue, except the goalkeeper, his jersey is white with blue stripes
# - All players can run and shoot the ball.
# - Attacker should be able to lob the ball
# - Midfielder should be able to pass the ball
# - Defender should be able to block the ball
# - The referee has a whistle. He wears black and is able to run and whistle.

# Players
#  - types of player

#   jersey

#   verbs:
#   run
#   shoot
#   lob
#   pass
#   block

# refereee
#   jersey
#   whistle

#   run
#   whistle

module Runnable
  def run
    'running'
  end
end

class Player
  include Runnable

  attr_reader :jersey_color

  def initialize(color = 'blue')
    @jersey_color = color
  end

  def shoot
    'shooting'
  end
end

class Attacker < Player
  def lob
    'lobbing'
  end
end

class Midfielder < Player
  def pass
    'passing'
  end
end

class Defender < Player
  def block
    'blocking'
  end
end

class Goalkeeper < Player
  def initialize
    super('white with blue stripes')
  end
end

class Referee
  include Runnable

  attr_reader :jersey_color

  def initialize(color = 'black')
    @jersey_color = color
    @whistle = true
  end

  def whistle
    'blows whistle' if @whistle
  end
end

puts 'Attacker:'
attacker = Attacker.new
puts attacker.run
puts attacker.shoot
puts attacker.lob
puts attacker.jersey_color
puts ''

puts 'Midfielder:'
midfielder = Midfielder.new
puts midfielder.run
puts midfielder.shoot
puts midfielder.pass
puts midfielder.jersey_color
puts ''

puts 'Defender:'
defender = Defender.new
puts defender.run
puts defender.shoot
puts defender.block
puts defender.jersey_color
puts ''

puts 'Goal Keeper:'
goalkeeper = Goalkeeper.new
puts goalkeeper.run
puts goalkeeper.shoot
puts goalkeeper.jersey_color
puts ''

puts 'Referee:'
referee = Referee.new
puts referee.run
puts referee.whistle
puts referee.jersey_color

puts ''
puts '---'
puts ''

puts '2. Preschool'
puts ''

### Preschool (by Natalie Thompson)

# Inside a preschool there are children, teachers, class assistants, a principle, janitors, and cafeteria workers. Both teachers and assistants can help a student with schoolwork and watch them on the playground. A teacher teaches and an assistant helps kids with any bathroom emergencies. Kids themselves can learn and play. A teacher and principle can supervise a class. Only the principle has the ability to expel a kid. Janitors have the ability to clean. Cafeteria workers have the ability to serve food. Children, teachers, class assistants, principles, janitors and cafeteria workers all have the ability to eat lunch.

# nouns and verbs:

#   -- help with school work
#   -- watch on playground

module Supervisable
  def supervise
    'Supervising'
  end
end

# - Preschool

class Preschool
  def initialize(name, principal_name)
    @name = name
    @principal = Principal.new(principal_name)
    @teachers = []
    @class_assistants = []
    @children = []
    @janitors = []
    @cafeteria_workers = []
  end
end

# - Human
#   - eat lunch

class Human
  def eat_lunch
    'Eating lunch'
  end
end

# - Children
#   - learn
#   - play

class Children < Human
  def learn
    'Learning'
  end

  def play
    'Playing'
  end
end

# - Principal
#   - supervise a class
#   - expel a child

class Principal < Human
  include Supervisable

  def initialize(name)
    @name = name
  end

  def expel_child
    'Expelling child'
  end
end

#   -- help with school work
#   -- watch on playground

class ClassroomWorker < Human
  def help_with_school_work
    'Help with school work'
  end

  def watch_on_playground
    'Watch on playground'
  end
end

# - Teachers
#   - supervise a class
#   - teach

class Teacher < ClassroomWorker
  include Supervisable

  def teach
    'Teaching'
  end
end

# - Class Assistants
#   - help with bathroom emergencies

#   -- help with school work
#   -- watch on playground

class ClassAssistant < ClassroomWorker
  def help_with_bathroom_emergency
    'Helping with bathroom emergency'
  end
end

# - Janitors
#   - clean

class Janitor < Human
  def clean
    'Cleaning'
  end
end

# - Cafeteria Workers
#   - serve food

class CafeteriaWorker < Human
  def serve_food
    'Serving food'
  end
end

puts 'Child:'
child = Children.new
puts child.learn
puts child.play
puts child.eat_lunch
puts ''

puts 'Teacher:'
teacher = Teacher.new
puts teacher.help_with_school_work
puts teacher.watch_on_playground
puts teacher.teach
puts teacher.supervise
puts teacher.eat_lunch
puts ''

puts 'Class Assistant:'
class_assistant = ClassAssistant.new
puts class_assistant.help_with_school_work
puts class_assistant.watch_on_playground
puts class_assistant.help_with_bathroom_emergency
puts class_assistant.eat_lunch
puts ''

puts 'Principal:'
principal = Principal.new('Gale')
puts principal.supervise
puts principal.expel_child
puts principal.eat_lunch
puts ''

puts 'Janitor:'
janitor = Janitor.new
puts janitor.clean
puts janitor.eat_lunch
puts ''

puts 'Cafeteria Worker:'
cafeteria_worker = CafeteriaWorker.new
puts cafeteria_worker.serve_food
puts cafeteria_worker.eat_lunch

puts ''
puts '---'
puts ''

puts '3. Dental Office'
puts ''

### Dental Office Alumni (by Rona Hsu)

# There's a dental office called Dental People Inc.  Within this office, there's 2 oral surgeons, 2 orthodontists, 1 general dentist.
# Both general dentists and oral surgeons can pull teeth. Orthodontists cannot pull teeth.  Orthodontists straighten teeth.
# All of these aforementioned specialties are dentists. All dentists graduated from dental school.  Oral surgeons place implants.
# General dentists fill teeth

# dental office
#   @name

# dentist
#   - graduated from dental school

# oral surgeon
#   - pull teeth
#   - place implants

# orthodontist
# - straighten teeth

# general dentist
#   - pull teeth
#   - fill teeth

class DentalOffice
  attr_reader :name

  def initialize(name)
    @name = name
    @oral_surgeons = []
    @orthodontists = []
    @general_dentists = []
  end
end

module Pullable
  def pull_tooth
    'Pulls tooth'
  end
end

class Dentist
  attr_reader :name, :graduated_dental_school

  def initialize(name)
    @name = name
    @graduated_dental_school = true
  end
end

class OralSurgeon < Dentist
  include Pullable

  def place_implant
    'Places implant'
  end
end

class Orthodonist < Dentist
  def straighten_tooth
    'Straighens tooth'
  end
end

class GeneralDentist < Dentist
  include Pullable

  def fill_tooth
    'Fills tooth'
  end
end

# There's a dental office called Dental People Inc.  Within this office, there's 2 oral surgeons, 2 orthodontists, 1 general dentist.
# Both general dentists and oral surgeons can pull teeth. Orthodontists cannot pull teeth.  Orthodontists straighten teeth.
# All of these aforementioned specialties are dentists. All dentists graduated from dental school.  Oral surgeons place implants.
# General dentists fill teeth

dental_office = DentalOffice.new('Dental People Inc.')

puts 'Oral Surgeon:'
oral_surgeon = OralSurgeon.new('A')
puts oral_surgeon.pull_tooth
puts oral_surgeon.place_implant
puts oral_surgeon.graduated_dental_school
puts ''

puts 'Orthodonist:'
orthodontist = Orthodonist.new('B')
puts orthodontist.straighten_tooth
puts orthodontist.graduated_dental_school
puts ''

puts 'General Dentist:'
general_dentist = GeneralDentist.new('C')
puts general_dentist.pull_tooth
puts general_dentist.fill_tooth
puts general_dentist.graduated_dental_school
