.class Lcom/sec/android/ims/IMSEventListener$1;
.super Lcom/sec/android/internal/ims/IIMSEventListener$Stub;
.source "IMSEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/ims/IMSEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/ims/IMSEventListener;


# direct methods
.method constructor <init>(Lcom/sec/android/ims/IMSEventListener;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sec/android/ims/IMSEventListener$1;->this$0:Lcom/sec/android/ims/IMSEventListener;

    invoke-direct {p0}, Lcom/sec/android/internal/ims/IIMSEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(IIII[BLcom/sec/android/internal/ims/IIMSParams;)V
    .locals 7
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "data"
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/ims/IMSEventListener$1;->this$0:Lcom/sec/android/ims/IMSEventListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/ims/IMSEventListener;->handleEvent(IIII[BLcom/sec/android/internal/ims/IIMSParams;)V

    .line 58
    const-string v0, "IIMSEventListener"

    const-string v1, "Inside handleEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method public notifyEvent(IIII[I[Ljava/lang/String;)V
    .locals 7
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "participantList"
    .parameter "uriList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/ims/IMSEventListener$1;->this$0:Lcom/sec/android/ims/IMSEventListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/ims/IMSEventListener;->notifyEvent(IIII[I[Ljava/lang/String;)V

    .line 64
    const-string v0, "IIMSEventListener"

    const-string v1, "Inside notifyEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method
