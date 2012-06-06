.class Lcom/android/OriginalSettings/ApnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/ApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/OriginalSettings/ApnSettings$1;->this$0:Lcom/android/OriginalSettings/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v3, 0x3e9

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    #calls: Lcom/android/OriginalSettings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    invoke-static {p2}, Lcom/android/OriginalSettings/ApnSettings;->access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    .line 104
    .local v0, state:Lcom/android/internal/telephony/Phone$DataState;
    sget-object v1, Lcom/android/OriginalSettings/ApnSettings$2;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 123
    .end local v0           #state:Lcom/android/internal/telephony/Phone$DataState;
    :cond_0
    :goto_0
    return-void

    .line 106
    .restart local v0       #state:Lcom/android/internal/telephony/Phone$DataState;
    :pswitch_0
    invoke-static {}, Lcom/android/OriginalSettings/ApnSettings;->access$100()Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/android/OriginalSettings/ApnSettings$1;->this$0:Lcom/android/OriginalSettings/ApnSettings;

    #calls: Lcom/android/OriginalSettings/ApnSettings;->fillList()V
    invoke-static {v1}, Lcom/android/OriginalSettings/ApnSettings;->access$200(Lcom/android/OriginalSettings/ApnSettings;)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/ApnSettings$1;->this$0:Lcom/android/OriginalSettings/ApnSettings;

    invoke-virtual {v1, v3}, Lcom/android/OriginalSettings/ApnSettings;->showDialog(I)V

    goto :goto_0

    .line 116
    .end local v0           #state:Lcom/android/internal/telephony/Phone$DataState;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SIM_PROFILE_UPDATE_DONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-static {}, Lcom/android/OriginalSettings/ApnSettings;->access$100()Z

    move-result v1

    if-nez v1, :cond_3

    .line 118
    iget-object v1, p0, Lcom/android/OriginalSettings/ApnSettings$1;->this$0:Lcom/android/OriginalSettings/ApnSettings;

    #calls: Lcom/android/OriginalSettings/ApnSettings;->fillList()V
    invoke-static {v1}, Lcom/android/OriginalSettings/ApnSettings;->access$200(Lcom/android/OriginalSettings/ApnSettings;)V

    goto :goto_0

    .line 120
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/ApnSettings$1;->this$0:Lcom/android/OriginalSettings/ApnSettings;

    invoke-virtual {v1, v3}, Lcom/android/OriginalSettings/ApnSettings;->showDialog(I)V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
