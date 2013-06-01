public function bubble_sort(array:Array):Array
{
	var length:uint = array.length;
	
	while(length > 0)
	{
		var newLength:uint = 0;
		
		for (var i:uint = 1; i < length; i++)
		{
			if (array[i-1] > array[i])
			{
				var swap1:uint = array[i-1];
				var swap2:uint = array[i];
				array[i] = swap1;
				array[i-1] = swap2;
				
				newLength = i;
			}
		}
		
		length = newLength;
	}
	
	return array;
}