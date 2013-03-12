.class Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;
.super Landroid/hardware/contextaware/ICACallback$Stub;
.source "ContextAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/ContextAwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CAListenerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/hardware/contextaware/CAListener;

.field final synthetic this$0:Landroid/hardware/contextaware/ContextAwareManager;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/ContextAwareManager;Landroid/hardware/contextaware/CAListener;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 522
    iput-object p1, p0, Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;->this$0:Landroid/hardware/contextaware/ContextAwareManager;

    .line 523
    invoke-direct {p0}, Landroid/hardware/contextaware/ICACallback$Stub;-><init>()V

    .line 524
    iput-object p2, p0, Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;->mListener:Landroid/hardware/contextaware/CAListener;

    .line 526
    if-nez p3, :cond_0

    #getter for: Landroid/hardware/contextaware/ContextAwareManager;->mMainLooper:Landroid/os/Looper;
    invoke-static {p1}, Landroid/hardware/contextaware/ContextAwareManager;->access$000(Landroid/hardware/contextaware/ContextAwareManager;)Landroid/os/Looper;

    move-result-object v0

    .line 529
    .local v0, looper:Landroid/os/Looper;
    :goto_0
    new-instance v1, Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate$1;-><init>(Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;Landroid/os/Looper;Landroid/hardware/contextaware/ContextAwareManager;)V

    iput-object v1, p0, Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 540
    return-void

    .line 526
    .end local v0           #looper:Landroid/os/Looper;
    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;)Landroid/hardware/contextaware/CAListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 506
    iget-object v0, p0, Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;->mListener:Landroid/hardware/contextaware/CAListener;

    return-object v0
.end method


# virtual methods
.method public caCallback(Landroid/hardware/contextaware/CAEvent;)V
    .locals 2
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 560
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 561
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 562
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 563
    iget-object v1, p0, Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 564
    return-void
.end method

.method public getListener()Landroid/hardware/contextaware/CAListener;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;->mListener:Landroid/hardware/contextaware/CAListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;->mListener:Landroid/hardware/contextaware/CAListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
