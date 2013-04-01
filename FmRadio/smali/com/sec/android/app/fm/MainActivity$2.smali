.class Lcom/sec/android/app/fm/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 845
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$2;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 848
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$2;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 850
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$2;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;
    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$3200(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FrequencyDialer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 851
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$2;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;
    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$3200(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FrequencyDialer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->lock()V

    .line 852
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$2;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$2;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v2, v2, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/fm/MainActivity;->onAndTune(FLandroid/view/View;I)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    :cond_0
    :goto_0
    return-void

    .line 856
    :catch_0
    move-exception v0

    .line 858
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 859
    :catch_1
    move-exception v1

    goto :goto_0
.end method
