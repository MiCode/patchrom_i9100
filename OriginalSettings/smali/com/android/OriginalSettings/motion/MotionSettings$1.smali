.class Lcom/android/settings/motion/MotionSettings$1;
.super Ljava/lang/Object;
.source "MotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/MotionSettings;->showMotionUnlockDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/MotionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/MotionSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/settings/motion/MotionSettings$1;->this$0:Lcom/android/settings/motion/MotionSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 481
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings$1;->this$0:Lcom/android/settings/motion/MotionSettings;

    #calls: Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion/MotionSettings;->access$000(Lcom/android/settings/motion/MotionSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_motion_tilt_to_unlock"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 482
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings$1;->this$0:Lcom/android/settings/motion/MotionSettings;

    #calls: Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion/MotionSettings;->access$100(Lcom/android/settings/motion/MotionSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_unlock_camera_short_cut"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 483
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings$1;->this$0:Lcom/android/settings/motion/MotionSettings;

    #calls: Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion/MotionSettings;->access$200(Lcom/android/settings/motion/MotionSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 484
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings$1;->this$0:Lcom/android/settings/motion/MotionSettings;

    #calls: Lcom/android/settings/motion/MotionSettings;->broadcastMotionChanged(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/motion/MotionSettings;->access$300(Lcom/android/settings/motion/MotionSettings;Z)V

    .line 485
    return-void
.end method
