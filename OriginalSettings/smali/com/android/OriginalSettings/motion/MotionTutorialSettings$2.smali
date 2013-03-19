.class Lcom/android/settings/motion/MotionTutorialSettings$2;
.super Ljava/lang/Object;
.source "MotionTutorialSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/MotionTutorialSettings;->showMotionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/MotionTutorialSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/MotionTutorialSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/settings/motion/MotionTutorialSettings$2;->this$0:Lcom/android/settings/motion/MotionTutorialSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 356
    const-string v1, "MotionTutorialSettings"

    const-string v2, "showMotionDialog, positive click"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v1, p0, Lcom/android/settings/motion/MotionTutorialSettings$2;->this$0:Lcom/android/settings/motion/MotionTutorialSettings;

    #calls: Lcom/android/settings/motion/MotionTutorialSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/motion/MotionTutorialSettings;->access$100(Lcom/android/settings/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion/MotionTutorialSettings$2;->this$0:Lcom/android/settings/motion/MotionTutorialSettings;

    #getter for: Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/motion/MotionTutorialSettings;->access$200(Lcom/android/settings/motion/MotionTutorialSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 358
    iget-object v1, p0, Lcom/android/settings/motion/MotionTutorialSettings$2;->this$0:Lcom/android/settings/motion/MotionTutorialSettings;

    #calls: Lcom/android/settings/motion/MotionTutorialSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/motion/MotionTutorialSettings;->access$300(Lcom/android/settings/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_engine"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/android/settings/motion/MotionTutorialSettings$2;->this$0:Lcom/android/settings/motion/MotionTutorialSettings;

    #calls: Lcom/android/settings/motion/MotionTutorialSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/motion/MotionTutorialSettings;->access$400(Lcom/android/settings/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_engine"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 360
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 362
    iget-object v1, p0, Lcom/android/settings/motion/MotionTutorialSettings$2;->this$0:Lcom/android/settings/motion/MotionTutorialSettings;

    invoke-virtual {v1}, Lcom/android/settings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 364
    .end local v0           #motion_changed:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/motion/MotionTutorialSettings$2;->this$0:Lcom/android/settings/motion/MotionTutorialSettings;

    #calls: Lcom/android/settings/motion/MotionTutorialSettings;->startTryActually()V
    invoke-static {v1}, Lcom/android/settings/motion/MotionTutorialSettings;->access$500(Lcom/android/settings/motion/MotionTutorialSettings;)V

    .line 365
    return-void
.end method
