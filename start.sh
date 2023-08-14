#!/usr/bin/env sh

if [ "$REMOTE_DEBUG" = true ] ; then
    JAVA_OPTS="$JAVA_OPTS -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5005"
fi

/usr/sbin/sshd
java $JAVA_OPTS -jar /home/app/application.jar

