.class Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$1;
.super Landroid/os/Handler;
.source "LockscreenHelpOverlayUsa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$1;->this$0:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$1;->this$0:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;

    #calls: Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->handleMissedEventUpdate()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->access$000(Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;)V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x12c2
        :pswitch_0
    .end packed-switch
.end method
