.class Lcom/android/OriginalSettings/motion/DoubleTapSettings$2;
.super Ljava/lang/Object;
.source "DoubleTapSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/motion/DoubleTapSettings;->showMotionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/motion/DoubleTapSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/motion/DoubleTapSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/DoubleTapSettings$2;->this$0:Lcom/android/OriginalSettings/motion/DoubleTapSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 160
    const-string v0, "DoubleTapSettings"

    const-string v1, "showMotionDialog, positive click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/DoubleTapSettings$2;->this$0:Lcom/android/OriginalSettings/motion/DoubleTapSettings;

    #calls: Lcom/android/OriginalSettings/motion/DoubleTapSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/DoubleTapSettings;->access$100(Lcom/android/OriginalSettings/motion/DoubleTapSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_double_tap"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 162
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/DoubleTapSettings$2;->this$0:Lcom/android/OriginalSettings/motion/DoubleTapSettings;

    #calls: Lcom/android/OriginalSettings/motion/DoubleTapSettings;->startTryActually()V
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/DoubleTapSettings;->access$200(Lcom/android/OriginalSettings/motion/DoubleTapSettings;)V

    .line 163
    return-void
.end method
