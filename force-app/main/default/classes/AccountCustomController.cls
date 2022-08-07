public class AccountCustomController {

    public PageReference saveTheRecord() {
        update account;
        return null;
    }


    private final Account account;
    
    public AccountCustomController(){
        account = [select Id, site, name from Account where Id=:ApexPages.currentPage().getParameters().get('id')];
    }
    
    public Account getAccount(){
        return account;
    }
    
    
}