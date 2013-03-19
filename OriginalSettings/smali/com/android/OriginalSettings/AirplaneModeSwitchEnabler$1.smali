.class Lcom/android/settings/AirplaneModeSwitchEnabler$1;
.super Landroid/os/Handler;
.source "AirplaneModeSwitchEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AirplaneModeSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$1;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 53
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$1;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    #calls: Lcom/android/settings/AirplaneModeSwitchEnabler;->onAirplaneModeChanged()V
    invoke-static {v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$000(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    goto :goto_0

    .line 58
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$1;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    #getter for: Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$100(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
