package bowlerhat.models {
  import org.restfulx.collections.ModelsCollection;
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="users")]
  [Bindable]
  public class User extends RxModel {
    public static const LABEL:String = "login";

    public var login:String = "";

    public var firstName:String = "";

    public var lastName:String = "";

    public var email:String = "";

    [HasOne]
    public var note:Note;
    
    [HasMany]
    public var tasks:ModelsCollection;
    
    [HasMany]
    public var projects:ModelsCollection;
    
    [HasMany]
    public var locations:ModelsCollection;
    
    public function User() {
      super(LABEL);
    }
  }
}
