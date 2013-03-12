.class Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$1;
.super Landroid/os/Handler;
.source "CircleShortcutWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 163
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 168
    :goto_0
    return-void

    .line 165
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    #calls: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->reloadBadges()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$000(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x12c2
        :pswitch_0
    .end packed-switch
.end method
