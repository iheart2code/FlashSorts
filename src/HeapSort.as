public function heap_sort(array:Array):Array
{
	array = heapify(array);
	
	var end:uint = array.length - 1;
	
	while (end > 0)
	{
		var endVal:uint = array[end];
		var firstVal:uint = array[0];
		array[end] = firstVal;
		array[0] = endVal;
		
		end -= 1;
		
		array = siftDown(array, 0, end);
	}
	
	return array;
}

public function heapify(array:Array):Array
{
	var start:int = Math.round(array.length / 2);
	
	while (start >= 0)
	{
		array = siftDown(array, start, array.length - 1);
		start -= 1;
	}
	
	return array;
}
public function siftDown(array:Array, start:uint, end:uint):Array
{
	var root:uint = start;
	
	while ((root * 2 + 1) <= end)
	{
		var child:uint = root * 2 + 1;
		var swap:uint = root;
		
		if (array[swap] < array[child])
			swap = child;
		if ((child + 1) <= end && array[swap] < array[child+1])
			swap = child + 1;
		if (swap != root)
		{
			var rootVal:uint = array[root];
			var swapVal:uint = array[swap];
			array[swap] = rootVal;
			array[root] = swapVal;
			root = swap;
		} else
			return array;
	}
	
	return array;
}