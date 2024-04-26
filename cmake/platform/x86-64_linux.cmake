add_definitions(-DENVIRONMENT=${ENVIRONMENT})
add_definitions(-DARCHITECTURE=${ARCHITECTURE})
add_definitions(-DMARTe2_TEST_ENVIRONMENT=${MARTe2_TEST_ENVIRONMENT})
add_definitions(-g -ggdb -fPIC -Wall -std=c++98 -Werror -static-libstdc++ -DUSE_PTHREAD -pthread -Wno-invalid-offsetof -Wno-unused-variable -fno-strict-aliasing -frtti)