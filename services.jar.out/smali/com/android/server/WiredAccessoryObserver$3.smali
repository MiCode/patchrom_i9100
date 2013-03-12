.class Lcom/android/server/WiredAccessoryObserver$3;
.super Landroid/os/Handler;
.source "WiredAccessoryObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WiredAccessoryObserver;


# direct methods
.method constructor <init>(Lcom/android/server/WiredAccessoryObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 624
    iput-object p1, p0, Lcom/android/server/WiredAccessoryObserver$3;->this$0:Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 627
    iget-object v1, p0, Lcom/android/server/WiredAccessoryObserver$3;->this$0:Lcom/android/server/WiredAccessoryObserver;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;

    #calls: Lcom/android/server/WiredAccessoryObserver;->sendUSBAudioIntent(Lcom/android/server/WiredAccessoryObserver$UsbAudioData;)V
    invoke-static {v1, v0}, Lcom/android/server/WiredAccessoryObserver;->access$900(Lcom/android/server/WiredAccessoryObserver;Lcom/android/server/WiredAccessoryObserver$UsbAudioData;)V

    .line 628
    iget-object v0, p0, Lcom/android/server/WiredAccessoryObserver$3;->this$0:Lcom/android/server/WiredAccessoryObserver;

    #getter for: Lcom/android/server/WiredAccessoryObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/WiredAccessoryObserver;->access$800(Lcom/android/server/WiredAccessoryObserver;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 629
    return-void
.end method
