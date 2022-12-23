trigger LeadEmail on Lead (before update) {

    for(Lead led:Trigger.new){
        if(led.Email !=null && led.status=='Working - Contacted' && led.FirstName !=null){

            Messaging.SingleEmailMessage msg=new Messaging.SingleEmailMessage();
            String mail =userInfo.getUserEmail();
            List<String> options=new List<String>{mail,led.Email};
                msg.setToAddresses(options);
            String body ='Hi'+led.FirstName +'We will contact you soon.Thanks for your interest.';
            msg.setPlainTextBody(body);
            msg.setSubject('Welcome');
            messaging.email[] emails=new messaging.email[]{msg};
                messaging.sendEmail(emails);
                
        }
    }
    
}