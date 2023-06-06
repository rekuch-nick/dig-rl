function array_contains_kind(arr, k){
	
	for(var i=0; i<array_length(arr); i++){
		if(arr[i].kind == k.kind){ return true; }
	}
	
	return false;
}