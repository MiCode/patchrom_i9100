.class Lcom/android/settings/motion/MotionTutorialSettings$4;
.super Ljava/lang/Object;
.source "MotionTutorialSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V
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
    .line 392
    iput-object p1, p0, Lcom/android/settings/motion/MotionTutorialSettings$4;->this$0:Lcom/android/settings/motion/MotionTutorialSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x0

    .line 394
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings$4;->this$0:Lcom/android/settings/motion/MotionTutorialSettings;

    #calls: Lcom/android/settings/motion/MotionTutorialSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion/MotionTutorialSettings;->access$600(Lcom/android/settings/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings$4;->this$0:Lcom/android/settings/motion/MotionTutorialSettings;

    #calls: Lcom/android/settings/motion/MotionTutorialSettings;->showMotionDialog()V
    invoke-static {v0}, Lcom/android/settings/motion/MotionTutorialSettings;->access$700(Lcom/android/settings/motion/MotionTutorialSettings;)V

    .line 401
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings$4;->this$0:Lcom/android/settings/motion/MotionTutorialSettings;

    #calls: Lcom/android/settings/motion/MotionTutorialSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion/MotionTutorialSettings;->access$800(Lcom/android/settings/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion/MotionTutorialSettings$4;->this$0:Lcom/android/settings/motion/MotionTutorialSettings;

    #getter for: Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/motion/MotionTutorialSettings;->access$200(Lcom/android/settings/motion/MotionTutorialSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings$4;->this$0:Lcom/android/settings/motion/MotionTutorialSettings;

    #calls: Lcom/android/settings/motion/MotionTutorialSettings;->startTryActually()V
    invoke-static {v0}, Lcom/android/settings/motion/MotionTutorialSettings;->access$500(Lcom/android/settings/motion/MotionTutorialSettings;)V

    goto :goto_0

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings$4;->this$0:Lcom/android/settings/motion/MotionTutorialSettings;

    #calls: Lcom/android/settings/motion/MotionTutorialSettings;->showMotionDialog()V
    invoke-static {v0}, Lcom/android/settings/motion/MotionTutorialSettings;->access$700(Lcom/android/settings/motion/MotionTutorialSettings;)V

    goto :goto_0
.end method
