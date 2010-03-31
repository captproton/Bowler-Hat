package bowlerhat.models {
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="tasks")]
  [Bindable]
  public class Task extends RxModel {
    public static const LABEL:String = "name";

    public var name:String = "";

    public var notes:String = "";

    [DateTime]
    public var startTime:Date = new Date;

    [DateTime]
    public var endTime:Date = new Date;

    public var completed:Boolean = false;

    public var nextAction:Boolean = false;

    [BelongsTo]
    public var project:Project;

    [BelongsTo]
    public var location:Location;

    [BelongsTo]
    public var user:User;

    public function Task() {
      super(LABEL);
    }
  }
}
