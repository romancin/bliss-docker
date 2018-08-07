# Script to restart bliss after an update
# Only needed for the Docker build, to stop the container exiting after an update
#
while [ true ]
do
    sh /bliss/bin/bliss.sh
    if [ "$?" = "0" ]; then
        echo "bliss.sh exited, restarting..."
        sleep 2
    else
        echo "bliss.sh exited with a non-zero value, exiting..."
        exit 1
    fi
done

