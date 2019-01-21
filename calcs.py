def add(a, b):
	c=a+b
	print("el resultado es ",c)
	return c


from erlport.erlterms import Atom
from erlport.erlang import *
# from erlport.erlang import MessageHandler as M#set_message_handler, cast

def register(pid):
	print("asd")
	def handler(message):
		cast(pid, message)

	set_message_handler(handler)
	return Atom(b'kablam')