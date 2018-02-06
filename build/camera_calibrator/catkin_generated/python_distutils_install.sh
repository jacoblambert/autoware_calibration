#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/kusanagi/Documents/workspaces/autoware_calibrator/src/camera_calibrator"

# snsure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/kusanagi/Documents/workspaces/autoware_calibrator/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/kusanagi/Documents/workspaces/autoware_calibrator/install/lib/python2.7/dist-packages:/home/kusanagi/Documents/workspaces/autoware_calibrator/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/kusanagi/Documents/workspaces/autoware_calibrator/build" \
    "/home/kusanagi/.pyenv/shims/python" \
    "/home/kusanagi/Documents/workspaces/autoware_calibrator/src/camera_calibrator/setup.py" \
    build --build-base "/home/kusanagi/Documents/workspaces/autoware_calibrator/build/camera_calibrator" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/kusanagi/Documents/workspaces/autoware_calibrator/install" --install-scripts="/home/kusanagi/Documents/workspaces/autoware_calibrator/install/bin"
