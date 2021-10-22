
function minLength(item, length, name) {
    if(item.length >= length)
    {
        return true;
    }
    return { 
        field: name,
        message:`${name} must be atleast ${length} characters long.`
    }
}
function required(item, name) {
    if(item.length > 0)
    {
        return true;
    }
    return { 
        field: name,
        message:`${name} is required.`
    }
}
function isPositiveNumber(item, name) {    
    if(item > 0)
    {
        return true;
    }
    return { 
        field: name,
        message:`${name} must be numeric greater than 0.`
    }
}
function isPositiveInteger(item, name) {   
    
    if(item % 1 === 0 && item > 0)
    {
        return true;
    }
    return { 
        field: name,
        message:`${name} must be an integer greater than 0.`
    }
}


module.exports = {
    minLength: minLength,
    required: required,
    isPositiveNumber: isPositiveNumber,
    isPositiveInteger: isPositiveInteger,
}