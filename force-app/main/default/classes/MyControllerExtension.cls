public class MyControllerExtension {

    private Account account;

    public MyControllerExtension(ApexPages.StandardController controller) {
        this.account = (Account) controller.getRecord();
    }
    
    public String getGreeting(){
        return 'hello ' + account.Name + ' (' + account.Id + ')';
    }

}