#!/bin/bash

# Update crypto
pull_crypto ( ) {
    echo -e "Updating crypto..."
    cd "crypto"
    git pull origin main --rebase
    cd ..
}

push_crypto ( ) {
    cd "crypto"
    git commit -am "gmodule automatic update"
    git push origin
    cd ..
}

# Update log
pull_log ( ) {
    echo -e "Updating log..."
    cd "log"
    git pull origin main --rebase
    cd ..
}

push_log ( ) {
    cd "log"
    git commit -am "gmodule automatic update"
    git push origin
    cd ..
}

# Update socket
pull_socket ( ) { 
    echo -e "Updating socket..."
    cd "socket"
    git pull origin main --rebase
    
    cd ..
}

push_socket ( ) {
    cd "socket"
    git commit -am "gmodule automatic update"
    git push origin
    cd ..
}

# Update sync
pull_sync ( ) { 
    echo -e "Updating sync..."
    cd "sync"
    git pull origin main --rebase
    
    cd ..
}

push_sync ( ) {
    cd "sync"
    git commit -am "gmodule automatic update"
    git push origin
    cd ..
}

# Update array
pull_array ( ) {
    echo -e "Updating array..."
    cd "array"
    git pull origin main --rebase
    cd "extern"
    pull_log
    pull_sync
    cd ../..
}

push_array ( ) {
    cd "array"
    git commit -am "gmodule automatic update"
    git push origin
    cd ..
}

# Update dict
pull_dict ( ) {
    echo -e "Updating dict..."
    cd "dict"
    git pull origin main --rebase
    cd "extern"
    pull_crypto
    pull_log
    pull_sync
    cd ../..
}

push_dict ( ) {
    cd "dict"
    git commit -am "gmodule automatic update"
    git push origin
    cd ..
}

# Update queue
pull_queue ( ) {
    echo -e "Updating queue..."
    cd "queue"
    git pull origin main --rebase
    cd "extern"
    pull_log
    pull_sync
    cd ../..    
}

push_queue ( ) {
    cd "queue"
    git commit -am "gmodule automatic update"
    git push origin
    cd ..
}

# Update set
pull_set ( ) {
    echo -e "Updating set..."
    cd "set"
    git pull origin main --rebase
    cd "extern"
    pull_sync
    cd ../..
}

push_set ( ) {
    cd "set"
    git commit -am "gmodule automatic update"
    git push origin
    cd ..
}

# Update stack
pull_stack ( ) {
    echo -e "Updating stack..."
    cd "stack"
    git pull origin main --rebase
    cd "extern"
    pull_log
    pull_sync
    cd ../..
}

push_stack ( ) {
    cd "stack"
    git commit -am "gmodule automatic update"
    git push origin
    cd ..
}

# Update tuple
pull_tuple ( ) {
    echo -e "Updating tuple..."
    cd "tuple"
    git pull origin main --rebase
    cd "extern"
    pull_log
    pull_sync
    cd ../..
}

push_tuple ( ) {
    cd "tuple"
    git commit -am "gmodule automatic update"
    git push origin
    cd ..
}

# Update table
pull_table ( ) {
    echo -e "Updating table..."
    cd "table"
    git pull origin main --rebase
    cd "extern"
    pull_sync
    pull_tuple
    cd ../..
}

push_table ( ) {
    cd "table"
    git commit -am "gmodule automatic update"
    git push origin
    cd ..
}

# Update tree
pull_tree ( ) {
    echo -e "Updating tree..."
    cd "tree"
    git pull origin main --rebase
    cd "extern"
    pull_log
    pull_sync
    cd ../..
}

push_tree ( ) {
    cd "tree"
    git commit -am "gmodule automatic update"
    git push origin
    cd ..
}

# Update base64
pull_base64 ( ) {
    echo -e "Updating base64..."
    cd "base64"
    git pull origin main --rebase
    cd "extern"
    pull_log
    pull_sync
    cd ../..
}

push_base64 ( ) {
    cd "table"
    git commit -am "gmodule automatic update"
    git push origin
    cd ..
}

# Update http
pull_http ( ) {
    echo -e "Updating http..."
    cd "http"
    git pull origin main --rebase
    cd "extern"
    pull_crypto
    pull_dict
    pull_sync
    cd ../..
}

push_http ( ) {
    cd "http"
    git commit -am "gmodule automatic update"
    git push origin
    cd ..
}

# Update json
pull_json ( ) {
    echo -e "Updating json..."
    cd "json"
    git pull origin main --rebase
    cd "extern"
    pull_array
    pull_crypto
    pull_dict
    pull_log
    pull_sync
    cd ../..
}

push_json ( ) {
    cd "json"
    git commit -am "gmodule automatic update"
    git push origin
    cd ..
}

# Update path
pull_path ( ) {
    echo -e "Updating path..."
    cd "path"
    git pull origin main --rebase
    cd "extern"
    pull_array
    pull_crypto
    pull_dict
    pull_json
    pull_stack
    #pull_log
    pull_sync
    cd ../..
}

push_path ( ) {
    cd "path"
    git commit -am "gmodule automatic update"
    git push origin
    cd ..
}

# Update parallel
pull_parallel ( ) {
    echo -e "Updating parallel..."
    cd "parallel"
    git pull origin main --rebase
    cd "extern"
    pull_array
    pull_crypto
    pull_dict
    pull_json
    pull_log
    pull_sync
    cd ../..
}

# Update web
pull_web ( ) {
    echo -e "Updating web..."
    cd "web"
    git pull origin main --rebase
    cd "extern"
    pull_array
    pull_base64
    pull_crypto
    pull_dict
    pull_http
    pull_json
    pull_log
    pull_queue
    pull_socket
    pull_stack
    pull_sync
    pull_tuple
    cd ../..
}

# Update primitives
update_primitives ( ) {
    echo -e "\nUpdating primitives..."

    pull_crypto
    push_crypto

    pull_log
    push_log

    pull_socket
    push_socket

    pull_sync
    push_sync
}

# Update abstract data I
update_abstract_data_i ( ) {
    echo -e "\nUpdating abstract data I..."

    pull_array
    push_array

    pull_dict
    push_dict

    pull_queue
    push_queue

    pull_set
    push_set

    pull_stack
    push_stack

    pull_tuple
    push_tuple
}

# Update abstract data II
update_abstract_data_ii ( ) {
    echo -e "\nUpdating abstract data II..."
    
    pull_table
    push_table

    pull_tree
    push_tree
}

# Update parser/serializer
update_parser_serializer ( ) {
    echo -e "\nUpdating parser/serializer..."
    
    pull_base64
    push_base64

    pull_http
    push_http

    pull_json
    push_json

    pull_path
    push_path
}

# Update performance computing
update_performance_computing ( ) {
    echo -e "\nUpdating performance computing..."
    pull_parallel
    
    #pull_vectorize
    pull_web
}

# Update ui
pull_ui ( ) {
    echo -e "\nUpdating ui..."
    cd "ui"
    git pull origin main --rebase
    cd "extern"
    pull_array
    pull_crypto
    pull_dict
    pull_json
    pull_log
    pull_sync
    pull_table
    pull_tuple
    cd ../..
}

# TODO: gtools

# Update g10
pull_g10 ( ) {
    echo -e "Updating g10..."
    cd "g10"
    git pull origin main --rebase
    cd "extern"
    pull_array
    pull_crypto
    pull_dict
    pull_http
    pull_json
    pull_log
    pull_queue
    pull_socket
    pull_stack
    pull_sync
    pull_tuple
    pull_parallel
    pull_web
    cd ../..
}

# Update everything
update_all ( ) {
    echo -e "Updating everything..."
    update_primitives
    update_abstract_data_i
    update_abstract_data_ii
    update_parser_serializer
    update_performance_computing

    pull_ui
    pull_g10
}

update_all