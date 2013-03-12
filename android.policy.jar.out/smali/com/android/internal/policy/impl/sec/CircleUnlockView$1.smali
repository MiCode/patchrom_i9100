.class Lcom/android/internal/policy/impl/sec/CircleUnlockView$1;
.super Landroid/os/Handler;
.source "CircleUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/CircleUnlockView;->setHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/CircleUnlockView;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockView;

    #calls: Lcom/android/internal/policy/impl/sec/CircleUnlockView;->startCircleAnimation()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;->access$000(Lcom/android/internal/policy/impl/sec/CircleUnlockView;)V

    .line 222
    return-void
.end method
