.class Lcom/sec/android/app/camera/Weather$1;
.super Landroid/os/Handler;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Weather;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Weather;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Weather;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/app/camera/Weather$1;->this$0:Lcom/sec/android/app/camera/Weather;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Weather$1;->this$0:Lcom/sec/android/app/camera/Weather;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Weather;->updateWeatherInfo()V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x12c0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
