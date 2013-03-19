.class Lcom/android/settings/AirplaneModeEnabler$1;
.super Landroid/os/Handler;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/AirplaneModeEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnabler$1;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 55
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 57
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler$1;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    #calls: Lcom/android/settings/AirplaneModeEnabler;->onAirplaneModeChanged()V
    invoke-static {v1}, Lcom/android/settings/AirplaneModeEnabler;->access$000(Lcom/android/settings/AirplaneModeEnabler;)V

    goto :goto_0

    .line 60
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler$1;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    #getter for: Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/AirplaneModeEnabler;->access$100(Lcom/android/settings/AirplaneModeEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
