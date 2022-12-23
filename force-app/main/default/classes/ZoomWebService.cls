@RestResource(urlMapping='/Zoom/*')
global class ZoomWebService {

    
//https://triforcia-f1-dev-ed.my.salesforce-sites.com/inclass/services/apexrest/Zoom/
    @HttpGet 
    global static String Hello(){
        return 'Hello Rest Callback Zoom';
    }
    
    @HttpPost
    global static String ZoomEventHandler(){
        return '200';
    }}
       
        /*
        InClassZoom__c newEvent =new InClassZoom__c();
        
    
        RestRequest req = RestContext.request;
RestResponse res = RestContext.response;
String jsonString = req.requestBody.toString();
Map<String,Object> eventMap = (Map<String,Object>) JSON.deserializeUntyped(jsonString);
Map<String,Object> payloadMap = (Map<String,Object>) eventMap.get('payload');
Map<String,Object> objectMap = (Map<String,Object>) payloadMap.get('object');
newEvent.Name = eventMap.get('event').toString();
if(eventMap.get('event').toString()=='meeting.deleted'){
// event delete
NewEvent.Data__c = objectMap.get('topic').toString();
} else if(eventMap.get('event').toString()=='meeting.created'){
// event create
NewEvent.Data__c = objectMap.get('join_url').toString();
} else if(eventMap.get('event').toString()=='meeting.updated'){
// event update
} else {
NewEvent.Data__c = eventMap.get('payload').toString();
}
insert newEvent;
return '200';



      
    }
}
*/