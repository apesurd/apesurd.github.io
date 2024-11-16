---
layout: single
author: Mayank
---

Traditionally, REST based communication use bulky file-formats like JSON and XML for inter-services communication. 
Which lead to excessive bankwidth and increased latency.

Microservices need fast and reliable communication. 
google came up with gRPC in 2015.

not text based format
use protocol buffers, which is an efficient and extensible data serialization format.
Smaller payload and faster communication.

used http/2 protocol
multiple request concurrently using a single connection. This is called multiplexing. 

Need to create a file with an extention .proto
Here is the basic syntax for it: 
```
syntax = "proto3";

service Calculator {
    rpc Add (TwoInts) returns (Output) {
        
    }
    rpc Multiply (TwoInts) returns (Output) {
        
    }
}

message TwoInts {
    int64 a = 1;
    int64 b = 2;
}

message Output {
    int64 result = 1;
}
```
