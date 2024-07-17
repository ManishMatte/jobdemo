@requires:'system-user'
service demo {
    
    function getData @(restrict : [{
                grant : 'READ',
                to    : 'jobscheduler'
        }]) ()  returns String;

    action postData
    @(restrict : [{
                grant : '*',
                to    : 'jobscheduler'
        }])(x:String) returns String;
}

@requires : 'authenticated-user'
service userSrv {
    
    function getData ()  returns String;

    action postData(x:String) returns String;
}

service openSrv {
    
    function getData ()  returns String;

    action postData(x:String) returns String;
}