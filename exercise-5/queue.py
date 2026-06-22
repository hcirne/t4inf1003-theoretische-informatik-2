class TicketQueue:
    def __init__(self):
        self.queue = []

    def add_customer(self, name):
        self.queue.append(name)

    def serve_customer(self):
        if self.isEmpty():
            return "No customers in line"
        return self.queue.pop(0)

    def isEmpty(self):
        return len(self.queue) == 0

myQueue = TicketQueue()

myQueue.add_customer('H')
myQueue.add_customer('A')
myQueue.add_customer('B')

print('Customer served: ' + myQueue.serve_customer())
print('Customer served: ' + myQueue.serve_customer())
print('Customer served: ' + myQueue.serve_customer())
print('Customer served: ' + myQueue.serve_customer())
