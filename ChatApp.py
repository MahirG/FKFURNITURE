from tkinter import *



def click():
    entered_text=textentry.get()
	
	
window = Tk()
window.title("My Application")
window.configure(background="White")

label (window, text=" Wel-come to my chat application")


textentry = Entry(window, width+ 20, bg="white")
textentry.grid(row=20, column=0, sticky=w)



Button(window, text="SUMIT", width=6, command=click).grid(row=0, column=0, sticky=w)



label(window, text="\nDefinition:", bg="black", fg="white", font="none 12 bold").grid(row=4, column=0, sticky=w)


window.mainloop()