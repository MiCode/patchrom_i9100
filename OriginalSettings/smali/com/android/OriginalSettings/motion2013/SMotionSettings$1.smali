.class Lcom/android/settings/motion2013/SMotionSettings$1;
.super Ljava/lang/Object;
.source "SMotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/SMotionSettings;->showMotionUnlockDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/SMotionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/SMotionSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/settings/motion2013/SMotionSettings$1;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

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

    .line 135
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings$1;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    #calls: Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion2013/SMotionSettings;->access$000(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_motion_tilt_to_unlock"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings$1;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    #calls: Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion2013/SMotionSettings;->access$100(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_unlock_camera_short_cut"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings$1;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    #calls: Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion2013/SMotionSettings;->access$200(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings$1;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    #calls: Lcom/android/settings/motion2013/SMotionSettings;->broadcastMotionChanged(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/motion2013/SMotionSettings;->access$300(Lcom/android/settings/motion2013/SMotionSettings;Z)V

    .line 139
    return-void
.end method
