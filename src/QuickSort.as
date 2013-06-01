public function quick_sort(array:Array):Array
{
	if (array.length <= 1)
		return array;
	
	var pivot:uint = Math.round(array.length / 2);
	var pivotValue:uint = array.splice(pivot, 1)[0];
	
	var less:Array = new Array();
	var greater:Array = new Array();
	
	for (var i:uint = 0; i < array.length; i++)
	{
		if (array[i] <= pivotValue)
			less.push(array[i]);
		else
			greater.push(array[i]);
	}
	
	var returnArray:Array = quick_sort(less);
	returnArray.push(pivotValue);
	
	var newGreater:Array = quick_sort(greater);
	
	for (var j:uint = 0; j < newGreater.length; j++)
	{
		returnArray.push(newGreater[j]);
	}
	
	return returnArray;
}