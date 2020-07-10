option=$1
chosen_dir="compartment_allocations/strategy_${option}"
src_dir1="src"
src_dir2="lwt"
src_dir3="freestanding"

cp ${chosen_dir}/${src_dir1}/* ${src_dir1}/
cp ${chosen_dir}/${src_dir2}/* ${src_dir2}/
cp ${chosen_dir}/${src_dir3}/* ${src_dir3}/