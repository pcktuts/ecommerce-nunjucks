
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


module.exports = {
    minLength: minLength,
    required: required,
}