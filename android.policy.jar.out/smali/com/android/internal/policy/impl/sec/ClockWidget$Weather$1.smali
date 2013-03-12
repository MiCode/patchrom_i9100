.class Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$1;
.super Landroid/os/Handler;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$1;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 311
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 317
    :goto_0
    return-void

    .line 314
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$1;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->updateWeatherInfo()V

    goto :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch 0x12c0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
