.class Lcom/android/sec_settings/ApnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/ApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/sec_settings/ApnSettings$1;->this$0:Lcom/android/sec_settings/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v3, 0x3e9

    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    #calls: Lcom/android/sec_settings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    invoke-static {p2}, Lcom/android/sec_settings/ApnSettings;->access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    .line 124
    .local v0, state:Lcom/android/internal/telephony/Phone$DataState;
    sget-object v1, Lcom/android/sec_settings/ApnSettings$4;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 159
    .end local v0           #state:Lcom/android/internal/telephony/Phone$DataState;
    :cond_0
    :goto_0
    return-void

    .line 126
    .restart local v0       #state:Lcom/android/internal/telephony/Phone$DataState;
    :pswitch_0
    invoke-static {}, Lcom/android/sec_settings/ApnSettings;->access$100()Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/android/sec_settings/ApnSettings$1;->this$0:Lcom/android/sec_settings/ApnSettings;

    #calls: Lcom/android/sec_settings/ApnSettings;->fillList()V
    invoke-static {v1}, Lcom/android/sec_settings/ApnSettings;->access$200(Lcom/android/sec_settings/ApnSettings;)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/android/sec_settings/ApnSettings$1;->this$0:Lcom/android/sec_settings/ApnSettings;

    invoke-virtual {v1, v3}, Lcom/android/sec_settings/ApnSettings;->showDialog(I)V

    goto :goto_0

    .line 136
    .end local v0           #state:Lcom/android/internal/telephony/Phone$DataState;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SIM_PROFILE_UPDATE_DONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 137
    invoke-static {}, Lcom/android/sec_settings/ApnSettings;->access$100()Z

    move-result v1

    if-nez v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/android/sec_settings/ApnSettings$1;->this$0:Lcom/android/sec_settings/ApnSettings;

    #calls: Lcom/android/sec_settings/ApnSettings;->fillList()V
    invoke-static {v1}, Lcom/android/sec_settings/ApnSettings;->access$200(Lcom/android/sec_settings/ApnSettings;)V

    goto :goto_0

    .line 140
    :cond_3
    iget-object v1, p0, Lcom/android/sec_settings/ApnSettings$1;->this$0:Lcom/android/sec_settings/ApnSettings;

    invoke-virtual {v1, v3}, Lcom/android/sec_settings/ApnSettings;->showDialog(I)V

    goto :goto_0

    .line 142
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.CSC_CONNECTION_RESET_DONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 143
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Settings_CSCDisable"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    invoke-static {}, Lcom/android/sec_settings/ApnSettings;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/sec_settings/ApnSettings$1;->this$0:Lcom/android/sec_settings/ApnSettings;

    #getter for: Lcom/android/sec_settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/sec_settings/ApnSettings$RestoreApnUiHandler;
    invoke-static {v1}, Lcom/android/sec_settings/ApnSettings;->access$300(Lcom/android/sec_settings/ApnSettings;)Lcom/android/sec_settings/ApnSettings$RestoreApnUiHandler;

    move-result-object v1

    if-nez v1, :cond_5

    .line 146
    iget-object v1, p0, Lcom/android/sec_settings/ApnSettings$1;->this$0:Lcom/android/sec_settings/ApnSettings;

    new-instance v2, Lcom/android/sec_settings/ApnSettings$RestoreApnUiHandler;

    iget-object v3, p0, Lcom/android/sec_settings/ApnSettings$1;->this$0:Lcom/android/sec_settings/ApnSettings;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/sec_settings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/sec_settings/ApnSettings;Lcom/android/sec_settings/ApnSettings$1;)V

    #setter for: Lcom/android/sec_settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/sec_settings/ApnSettings$RestoreApnUiHandler;
    invoke-static {v1, v2}, Lcom/android/sec_settings/ApnSettings;->access$302(Lcom/android/sec_settings/ApnSettings;Lcom/android/sec_settings/ApnSettings$RestoreApnUiHandler;)Lcom/android/sec_settings/ApnSettings$RestoreApnUiHandler;

    .line 148
    :cond_5
    iget-object v1, p0, Lcom/android/sec_settings/ApnSettings$1;->this$0:Lcom/android/sec_settings/ApnSettings;

    #getter for: Lcom/android/sec_settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/sec_settings/ApnSettings$RestoreApnUiHandler;
    invoke-static {v1}, Lcom/android/sec_settings/ApnSettings;->access$300(Lcom/android/sec_settings/ApnSettings;)Lcom/android/sec_settings/ApnSettings$RestoreApnUiHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/sec_settings/ApnSettings$RestoreApnUiHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 152
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ACTION_DATA_SET_ATTACH_APN_DONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const-string v1, "ApnSettings"

    const-string v2, "ACTION_DATA_SET_ATTACH_APN_DONE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v1, p0, Lcom/android/sec_settings/ApnSettings$1;->this$0:Lcom/android/sec_settings/ApnSettings;

    #getter for: Lcom/android/sec_settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/sec_settings/ApnSettings;->access$500(Lcom/android/sec_settings/ApnSettings;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/sec_settings/ApnSettings$1;->this$0:Lcom/android/sec_settings/ApnSettings;

    #getter for: Lcom/android/sec_settings/ApnSettings;->mDelayHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/sec_settings/ApnSettings;->access$600(Lcom/android/sec_settings/ApnSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/ApnSettings$1;->this$0:Lcom/android/sec_settings/ApnSettings;

    #getter for: Lcom/android/sec_settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/sec_settings/ApnSettings;->access$500(Lcom/android/sec_settings/ApnSettings;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 156
    iget-object v1, p0, Lcom/android/sec_settings/ApnSettings$1;->this$0:Lcom/android/sec_settings/ApnSettings;

    #getter for: Lcom/android/sec_settings/ApnSettings;->mDelayHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/sec_settings/ApnSettings;->access$600(Lcom/android/sec_settings/ApnSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/ApnSettings$1;->this$0:Lcom/android/sec_settings/ApnSettings;

    #getter for: Lcom/android/sec_settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/sec_settings/ApnSettings;->access$500(Lcom/android/sec_settings/ApnSettings;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
