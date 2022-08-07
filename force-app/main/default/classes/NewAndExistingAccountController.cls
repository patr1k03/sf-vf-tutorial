public class NewAndExistingAccountController {
    public Account account {get; private set;}
    
    public PageReference save(){
        try{
            upsert account;
        } catch(System.DMLException ex){
            ApexPages.addMessages(ex);
            return null;
        }
        PageReference redirectSuccess = new ApexPages.StandardController(Account).view();
        return redirectSuccess;
    }
    
    public NewAndExistingAccountController(){
        Id id = ApexPages.currentPage().getParameters().get('id');
        account = (id == null) ? new Account() : [select Name, Industry, Phone from Account where Id=:id];
    }
}