.class Lcom/android/OriginalSettings/BatteryInfo$1;
.super Landroid/os/Handler;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/BatteryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/BatteryInfo;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/BatteryInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/OriginalSettings/BatteryInfo$1;->this$0:Lcom/android/OriginalSettings/BatteryInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 61
    :goto_0
    return-void

    .line 56
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/BatteryInfo$1;->this$0:Lcom/android/OriginalSettings/BatteryInfo;

    #calls: Lcom/android/OriginalSettings/BatteryInfo;->updateBatteryStats()V
    invoke-static {v0}, Lcom/android/OriginalSettings/BatteryInfo;->access$000(Lcom/android/OriginalSettings/BatteryInfo;)V

    .line 57
    const/4 v0, 0x1

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/OriginalSettings/BatteryInfo$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
