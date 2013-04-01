.class Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;
.super Landroid/os/CountDownTimer;
.source "FrequencyDisplayBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    #getter for: Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mCurrentFrequencyPosition:J
    invoke-static {v1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->access$200(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;)J

    move-result-wide v1

    #setter for: Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyPosition:J
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->access$002(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;J)J

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    #getter for: Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$OnFrequencyChangeListener;
    invoke-static {v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->access$300(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;)Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$OnFrequencyChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    #getter for: Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyPosition:J
    invoke-static {v1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->access$000(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$OnFrequencyChangeListener;->onFrequencyChanged(J)V

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    #calls: Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->calculateFrequencyPosition()V
    invoke-static {v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->access$400(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;)V

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->invalidate()V

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    const-string v1, " setAnimationToFreqBar onTick  onFinish "

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->log(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public onTick(J)V
    .locals 5
    .parameter "millisUntilFinished"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setAnimationToFreqBar onTick  millisUntilFinished= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->log(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setAnimationToFreqBar inside mFrequencyPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    #getter for: Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyPosition:J
    invoke-static {v2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->access$000(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPreviousFrequencyPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    #getter for: Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mPreviousFrequencyPosition:J
    invoke-static {v2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->access$100(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurrentFrequencyPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    #getter for: Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mCurrentFrequencyPosition:J
    invoke-static {v2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->access$200(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->log(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    #getter for: Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mCurrentFrequencyPosition:J
    invoke-static {v1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->access$200(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    #getter for: Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mPreviousFrequencyPosition:J
    invoke-static {v3}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->access$100(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x5

    div-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->access$114(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;J)J

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    #getter for: Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mPreviousFrequencyPosition:J
    invoke-static {v1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->access$100(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;)J

    move-result-wide v1

    #setter for: Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyPosition:J
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->access$002(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;J)J

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    #getter for: Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$OnFrequencyChangeListener;
    invoke-static {v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->access$300(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;)Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$OnFrequencyChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    #getter for: Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyPosition:J
    invoke-static {v1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->access$000(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$OnFrequencyChangeListener;->onFrequencyChanged(J)V

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    #calls: Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->calculateFrequencyPosition()V
    invoke-static {v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->access$400(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;)V

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->invalidate()V

    .line 56
    return-void
.end method
