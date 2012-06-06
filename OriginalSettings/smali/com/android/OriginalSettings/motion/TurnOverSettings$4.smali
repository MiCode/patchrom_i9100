.class Lcom/android/OriginalSettings/motion/TurnOverSettings$4;
.super Ljava/lang/Object;
.source "TurnOverSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/motion/TurnOverSettings;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/motion/TurnOverSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/motion/TurnOverSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/TurnOverSettings$4;->this$0:Lcom/android/OriginalSettings/motion/TurnOverSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 208
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/TurnOverSettings$4;->this$0:Lcom/android/OriginalSettings/motion/TurnOverSettings;

    #calls: Lcom/android/OriginalSettings/motion/TurnOverSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/OriginalSettings/motion/TurnOverSettings;->access$400(Lcom/android/OriginalSettings/motion/TurnOverSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_overturn"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/TurnOverSettings$4;->this$0:Lcom/android/OriginalSettings/motion/TurnOverSettings;

    const-string v2, "audio"

    #calls: Lcom/android/OriginalSettings/motion/TurnOverSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/android/OriginalSettings/motion/TurnOverSettings;->access$500(Lcom/android/OriginalSettings/motion/TurnOverSettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 210
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/TurnOverSettings$4;->this$0:Lcom/android/OriginalSettings/motion/TurnOverSettings;

    #calls: Lcom/android/OriginalSettings/motion/TurnOverSettings;->showUseRingDialog()V
    invoke-static {v1}, Lcom/android/OriginalSettings/motion/TurnOverSettings;->access$200(Lcom/android/OriginalSettings/motion/TurnOverSettings;)V

    .line 218
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :goto_0
    return-void

    .line 213
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/TurnOverSettings$4;->this$0:Lcom/android/OriginalSettings/motion/TurnOverSettings;

    #calls: Lcom/android/OriginalSettings/motion/TurnOverSettings;->startTryActually(Z)V
    invoke-static {v1, v3}, Lcom/android/OriginalSettings/motion/TurnOverSettings;->access$600(Lcom/android/OriginalSettings/motion/TurnOverSettings;Z)V

    goto :goto_0

    .line 216
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/TurnOverSettings$4;->this$0:Lcom/android/OriginalSettings/motion/TurnOverSettings;

    #calls: Lcom/android/OriginalSettings/motion/TurnOverSettings;->showMotionDialog()V
    invoke-static {v1}, Lcom/android/OriginalSettings/motion/TurnOverSettings;->access$700(Lcom/android/OriginalSettings/motion/TurnOverSettings;)V

    goto :goto_0
.end method
