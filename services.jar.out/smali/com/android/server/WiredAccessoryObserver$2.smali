.class Lcom/android/server/WiredAccessoryObserver$2;
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
    .line 615
    iput-object p1, p0, Lcom/android/server/WiredAccessoryObserver$2;->this$0:Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 618
    iget-object v1, p0, Lcom/android/server/WiredAccessoryObserver$2;->this$0:Lcom/android/server/WiredAccessoryObserver;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/android/server/WiredAccessoryObserver;->setDevicesState(IILjava/lang/String;)V
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/WiredAccessoryObserver;->access$700(Lcom/android/server/WiredAccessoryObserver;IILjava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/android/server/WiredAccessoryObserver$2;->this$0:Lcom/android/server/WiredAccessoryObserver;

    #getter for: Lcom/android/server/WiredAccessoryObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/WiredAccessoryObserver;->access$800(Lcom/android/server/WiredAccessoryObserver;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 620
    return-void
.end method
