.class Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate$1;
.super Landroid/os/Handler;
.source "ContextAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;-><init>(Landroid/hardware/contextaware/ContextAwareManager;Landroid/hardware/contextaware/CAListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;

.field final synthetic val$this$0:Landroid/hardware/contextaware/ContextAwareManager;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;Landroid/os/Looper;Landroid/hardware/contextaware/ContextAwareManager;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate$1;->this$1:Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;

    iput-object p3, p0, Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate$1;->val$this$0:Landroid/hardware/contextaware/ContextAwareManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 533
    iget-object v1, p0, Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate$1;->this$1:Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;

    #getter for: Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;->mListener:Landroid/hardware/contextaware/CAListener;
    invoke-static {v1}, Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;->access$100(Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;)Landroid/hardware/contextaware/CAListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 534
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/contextaware/CAEvent;

    .line 535
    .local v0, caEvent:Landroid/hardware/contextaware/CAEvent;
    iget-object v1, p0, Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate$1;->this$1:Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;

    #getter for: Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;->mListener:Landroid/hardware/contextaware/CAListener;
    invoke-static {v1}, Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;->access$100(Landroid/hardware/contextaware/ContextAwareManager$CAListenerDelegate;)Landroid/hardware/contextaware/CAListener;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/hardware/contextaware/CAListener;->onContextChanged(Landroid/hardware/contextaware/CAEvent;)V

    .line 537
    .end local v0           #caEvent:Landroid/hardware/contextaware/CAEvent;
    :cond_0
    return-void
.end method
