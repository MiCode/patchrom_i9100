.class Lcom/android/settings/motion/MotionSettings$2;
.super Ljava/lang/Object;
.source "MotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 489
    iput-object p1, p0, Lcom/android/settings/motion/MotionSettings$2;->this$0:Lcom/android/settings/motion/MotionSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    const/4 v0, 0x0

    .line 491
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings$2;->this$0:Lcom/android/settings/motion/MotionSettings;

    #getter for: Lcom/android/settings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/motion/MotionSettings;->access$500(Lcom/android/settings/motion/MotionSettings;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings$2;->this$0:Lcom/android/settings/motion/MotionSettings;

    #calls: Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/motion/MotionSettings;->access$400(Lcom/android/settings/motion/MotionSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 492
    return-void
.end method
