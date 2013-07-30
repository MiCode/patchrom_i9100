.class Lcom/android/sec_settings/MasterClearModemReset$1;
.super Landroid/os/Handler;
.source "MasterClearModemReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/MasterClearModemReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/MasterClearModemReset;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/MasterClearModemReset;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/sec_settings/MasterClearModemReset$1;->this$0:Lcom/android/sec_settings/MasterClearModemReset;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 76
    const-string v0, "MasterClearModemReset"

    const-string v1, "Something weird happened"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return-void

    .line 72
    :pswitch_0
    const-string v0, "MasterClearModemReset"

    const-string v1, "Modem reset is done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/android/sec_settings/MasterClearModemReset$1;->this$0:Lcom/android/sec_settings/MasterClearModemReset;

    #calls: Lcom/android/sec_settings/MasterClearModemReset;->sendMasterClearIntent()V
    invoke-static {v0}, Lcom/android/sec_settings/MasterClearModemReset;->access$000(Lcom/android/sec_settings/MasterClearModemReset;)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x3f0
        :pswitch_0
    .end packed-switch
.end method
