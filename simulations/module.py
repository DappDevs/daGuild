class Module(contract):
    def __init__(self, assignee, *gates):
        self.assignee = assignee
        self.gates = gates
        self.approvals = []

    @property
    def complete(self):
        return len(self.approvals) >= len(self.gates)

    def approve(self, gate):
        assert gate not in self.approvals
        self.approvals.append(gate)

    def reject(self, gate):
        assert not self.complete
        assert gate in self.approvals
        self.approvals.remove(gate)

    def payout(self):
        assert self.complete
        self.assignee.(self.payout)
