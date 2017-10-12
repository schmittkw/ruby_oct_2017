// console.log('this is algos');
function rBinarySearch(arr,num){
    if(arr.length<1){
        console.log('false')
        return false
    }
    var mid = arr[Math.floor(arr.length-1/2)];
    if(mid > num){
        console.log('greater than')
        arr = arr.slice(mid+1,arr.length-1);
        rBinarySearch(arr,num)
    }
    else if(mid < num){
        console.log('less than')
        arr = arr.slice(0,mid+1);
        rBinarySearch(arr,num)
    }
    else{
        console.log('true');
        return true
    }
}

rBinarySearch(arr=[1,2,3,4,5,6,7,8,9],num=12)