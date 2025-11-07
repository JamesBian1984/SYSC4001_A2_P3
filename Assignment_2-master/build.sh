if [ ! -d "bin" ]; then
    mkdir bin
else
	rm bin/*
fi
g++ -g -O0 -I . -o bin/interrupts interrupts_101311339.cpp
./bin/interrupts trace.txt vector_table.txt device_table.txt external_files.txt
cat execution.txt
echo "-------SYSTEM STATUS--------"
cat system_status.txt