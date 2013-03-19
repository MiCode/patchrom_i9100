.class Lcom/android/settings/AirplaneModeSettings$1;
.super Landroid/os/Handler;
.source "AirplaneModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AirplaneModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirplaneModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AirplaneModeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/AirplaneModeSettings$1;->this$0:Lcom/android/settings/AirplaneModeSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 48
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 53
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSettings$1;->this$0:Lcom/android/settings/AirplaneModeSettings;

    #calls: Lcom/android/settings/AirplaneModeSettings;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/android/settings/AirplaneModeSettings;->access$000(Lcom/android/settings/AirplaneModeSettings;)V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
