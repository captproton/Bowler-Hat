package bowlerhat.models {
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="notes")]
  [Bindable]
  public class Note extends RxModel {
    public static const LABEL:String = "content";

    public var content:String = "";

    [BelongsTo]
    public var user:User;

    public function Note() {
      super(LABEL);
    }
  }
}
