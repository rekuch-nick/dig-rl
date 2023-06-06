function array_contains(arr, tar){
	
	for(var i=0; i<array_length(arr); i++){
		if(arr[i] == tar){ return true; }
	}
	
	return false;
}