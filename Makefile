JAVAC = javac
JAVACFLAGS =
SRC= src/DenialAppealSystem.java	\

CLS= $(SRC:.java=.class)

all:  $(CLS)

.SUFFIXES : .class .java
.java.class :
	$(JAVAC) $(JAVACFLAGS) $<

jar: $(classes)
	jar -cp postgresql-42.2.18.jar $(classes) \
	jar -cp KGradientPanel-SNAPSHOT.jar $(classes)
