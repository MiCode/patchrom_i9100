.class public Lcom/sec/android/app/fm/MonoAudioReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MonoAudioReceiver.java"


# static fields
.field private static mPlayer:Lcom/samsung/media/fmradio/FMPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlayer(Landroid/content/Context;)Lcom/samsung/media/fmradio/FMPlayer;
    .locals 1
    .parameter "context"

    .prologue
    .line 14
    sget-object v0, Lcom/sec/android/app/fm/MonoAudioReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v0, :cond_0

    .line 15
    const-string v0, "FMPlayer"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayer;

    sput-object v0, Lcom/sec/android/app/fm/MonoAudioReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 17
    :cond_0
    sget-object v0, Lcom/sec/android/app/fm/MonoAudioReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 23
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 24
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/fm/MonoAudioReceiver;->getPlayer(Landroid/content/Context;)Lcom/samsung/media/fmradio/FMPlayer;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/sec/android/app/fm/MainActivity;->setSoundSettings(Lcom/samsung/media/fmradio/FMPlayer;Landroid/media/AudioManager;Landroid/content/Context;)V

    .line 25
    return-void
.end method
