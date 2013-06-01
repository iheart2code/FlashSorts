public function insertion_sort(array:Array):Array
{
	for (var i:uint = 1; i < array.length; i++)
	{
		var valueToInsert:uint = array[i];
		var holePosition:uint = i;
		
		while (holePosition > 0 && valueToInsert < array[holePosition - 1])
		{
			array[holePosition] = array[holePosition - 1];
			holePosition -= 1;
		}
		
		array[holePosition] = valueToInsert;
	}
	
	return array;
}