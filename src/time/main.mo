import Int = "mo:base/Int";
import Time = "mo:base/Time";
actor {
    var lastTime = Time.now();
    public func greet(name : Text) : async Text {
        let now = Time.now();
        let elapsedSeconds = (now - lastTime) / 1000_000_000;
        lastTime := now;
        return "Hello, " # name # "!" #
          " I was last called " # Int.toText(elapsedSeconds) # " seconds ago";
    };
};
