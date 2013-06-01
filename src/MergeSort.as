public function merge_sort(array:Array):Array
{
	if (array.length <= 1)
		return array;
	
	var left:Array = new Array();
	var right:Array = new Array();
	var middle:uint = Math.round(array.length / 2);
	
	for (var i:uint = 0; i < middle; i++)
	{
		left.push(array[i]);
	}
	
	for (var j:uint = middle; j < array.length; j++)
	{
		right.push(array[j]);
	}
	
	left = merge_sort(left);
	right = merge_sort(right);
	
	return merge(left, right);
}

public function merge(left:Array, right:Array):Array
{
	var result:Array = new Array();
	
	while (left.length > 0  || right.length > 0)
	{
		if (left.length > 0 && right.length > 0)
		{
			if (left[0] <= right[0])
				result.push(left.shift());
			else
				result.push(right.shift());
		} else if (left.length > 0)
		{
			result.push(left.shift());
		} else if (right.length > 0)
		{
			result.push(right.shift());
		}
	}
	
	return result;
}