


on multi-csc
	echo 
	echo "-- Appling Multi-CSC..."
	mount /system
	echo "Applied the CSC-code : <salse_code>"
	cp -y -f -r -v /system/csc/<salse_code> /
	unmount /system
	mount /system
	cmp -r /system/csc/<salse_code> /
	echo "Successfully applied multi-CSC."	

on factory-out
	mount /efs
	write /efs/.currentlyFactoryReset "done"
	unmount /efs

