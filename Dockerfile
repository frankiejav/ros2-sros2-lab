FROM ros:lyrical
ENV RMW_IMPLEMENTATION=rmw_fastrtps_cpp
RUN apt-get update && apt-get install -y --no-install-recommends ros-lyrical-demo-nodes-cpp ros-lyrical-demo-nodes-py ros-lyrical-sros2 tcpdump git openssl && git clone --depth 1 --branch lyrical https://github.com/ros2/sros2.git /opt/sros2 && rm -rf /var/lib/apt/lists/*
