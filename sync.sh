#!/bin/bash
scp build/host/head_bin OCT_FPGA_NODE0:~/
scp build/host/node_bin OCT_FPGA_NODE1:~/
scp build/host/tail_bin OCT_FPGA_NODE2:~/

scp build/bit_container_0/bit_container_0.xclbin OCT_FPGA_NODE0:~/
scp build/bit_container_2/bit_container_2.xclbin OCT_FPGA_NODE1:~/
scp build/bit_container_1/bit_container_1.xclbin OCT_FPGA_NODE2:~/

scp host_src/alice29.txt OCT_FPGA_NODE0:~/

scp head_ip.ini OCT_FPGA_NODE0:~/
scp node_t_ip.ini OCT_FPGA_NODE1:~/
scp node_b_ip.ini OCT_FPGA_NODE1:~/
scp tail_ip.ini OCT_FPGA_NODE2:~/

scp build/host/udp_setup OCT_FPGA_NODE0:~/
scp build/host/udp_setup OCT_FPGA_NODE1:~/
scp build/host/udp_setup OCT_FPGA_NODE2:~/
