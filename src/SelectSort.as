public function select_sort(array:Array):Array
{
	var iMin:int;
	
	for (var j:uint = 0; j < array.length - 1; j++)
	{
		iMin = j;
		
		for (var i:uint = j + 1; i < array.length; i++)
		{
			if (array[i] < array[iMin])
				iMin = i;
		}
		
		if (iMin != j)
		{
			var swap1:uint = array[j];
			var swap2:uint = array[iMin];
			array[iMin] = swap1;
			array[j] = swap2;
		}
	}
	
	return array;
}