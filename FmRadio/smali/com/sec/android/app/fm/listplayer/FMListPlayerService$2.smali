.class Lcom/sec/android/app/fm/listplayer/FMListPlayerService$2;
.super Landroid/content/BroadcastReceiver;
.source "FMListPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/listplayer/FMListPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$2;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 277
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 280
    const-string v3, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 281
    .local v1, bFromBT:Z
    iget-object v3, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$2;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 285
    .local v2, mAudioManager:Landroid/media/AudioManager;
    invoke-virtual {v2}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    .line 286
    iget-object v3, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$2;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v3}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->pausePlay()V

    .line 302
    .end local v1           #bFromBT:Z
    .end local v2           #mAudioManager:Landroid/media/AudioManager;
    :cond_0
    return-void
.end method
