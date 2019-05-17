from clips import Environment, Symbol

environment = Environment()


environment.load('./knowledge_base/elevator.clp')
environment.assert_string('(elevator (number 1) (current-floor 3) (direction down))')
environment.assert_string('(button (floor 2))')

print(environment.agenda_changed)

print([x for x in environment.activations()])

environment.run()
