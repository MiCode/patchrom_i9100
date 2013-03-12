.class Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
.super Landroid/hardware/scontext/ISContextCallback$Stub;
.source "SContextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SContextListenerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/hardware/scontext/SContextListener;

.field final synthetic this$0:Landroid/hardware/scontext/SContextManager;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;ILandroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter "listener"
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 209
    iput-object p1, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->this$0:Landroid/hardware/scontext/SContextManager;

    invoke-direct {p0}, Landroid/hardware/scontext/ISContextCallback$Stub;-><init>()V

    .line 211
    iput-object p2, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;

    .line 213
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 215
    .local v0, looper:Landroid/os/Looper;
    :goto_0
    new-instance v1, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;-><init>(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;Landroid/os/Looper;Landroid/hardware/scontext/SContextManager;)V

    iput-object v1, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 225
    return-void

    .line 213
    .end local v0           #looper:Landroid/os/Looper;
    :cond_0
    iget-object v0, p1, Landroid/hardware/scontext/SContextManager;->mMainLooper:Landroid/os/Looper;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Landroid/hardware/scontext/SContextListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 203
    iget-object v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method


# virtual methods
.method public getListener()Landroid/hardware/scontext/SContextListener;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public scontextCallback(Landroid/hardware/scontext/SContextEvent;)V
    .locals 2
    .parameter "scontextEvent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 233
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 234
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 235
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 236
    return-void
.end method
