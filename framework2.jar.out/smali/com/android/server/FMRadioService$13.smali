.class Lcom/android/server/FMRadioService$13;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 725
    iput-object p1, p0, Lcom/android/server/FMRadioService$13;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 727
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.PALM_DOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 729
    iget-object v1, p0, Lcom/android/server/FMRadioService$13;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mIsOn:Z
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/FMRadioService$13;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mIsMute:Z
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$1000(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 730
    const-string v1, "ACTION_PALM_DOWN : mute"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 731
    iget-object v1, p0, Lcom/android/server/FMRadioService$13;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$500(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v3, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 734
    :cond_0
    return-void
.end method
