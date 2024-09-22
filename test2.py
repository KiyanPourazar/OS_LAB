from chem_balancer import ChemicalEquationBalancer

ce = ChemicalEquationBalancer(input().split(),input())

ce.print_answer()

ChemicalEquationBalancer.print_matrix(ce.original_matrix)
ChemicalEquationBalancer.print_matrix(ce.matrix)