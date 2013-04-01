.class Lcom/sec/android/app/fm/MainActivity$9;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2086
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$9;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v4, 0xa

    .line 2089
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2090
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2091
    .local v0, stream:I
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2093
    .local v1, volume:I
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$9;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-boolean v2, v2, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v2, :cond_1

    .line 2094
    invoke-static {}, Lcom/sec/android/app/fm/MainActivity;->access$2800()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$9;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-boolean v2, v2, Lcom/sec/android/app/fm/MainActivity;->mIsFadeVolume:Z

    if-nez v2, :cond_0

    .line 2095
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$9;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {}, Lcom/sec/android/app/fm/MainActivity;->access$2800()I

    move-result v3

    #calls: Lcom/sec/android/app/fm/MainActivity;->setVolume(I)V
    invoke-static {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->access$2700(Lcom/sec/android/app/fm/MainActivity;I)V

    .line 2109
    .end local v0           #stream:I
    .end local v1           #volume:I
    :cond_0
    :goto_0
    return-void

    .line 2100
    .restart local v0       #stream:I
    .restart local v1       #volume:I
    :cond_1
    if-ne v0, v4, :cond_3

    .line 2101
    if-nez v1, :cond_2

    .line 2102
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$9;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$6800(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const v3, 0x7f020094

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 2104
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$9;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$6800(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const v3, 0x7f020095

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 2107
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$9;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$6900(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$9;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v3, v3, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    goto :goto_0
.end method
