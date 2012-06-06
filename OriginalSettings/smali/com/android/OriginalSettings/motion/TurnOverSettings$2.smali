.class Lcom/android/OriginalSettings/motion/TurnOverSettings$2;
.super Ljava/lang/Object;
.source "TurnOverSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/motion/TurnOverSettings;->showMotionDialog()V
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
    .line 163
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/TurnOverSettings$2;->this$0:Lcom/android/OriginalSettings/motion/TurnOverSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 165
    const-string v0, "TurnOverSettings"

    const-string v1, "showMotionDialog, positive click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/TurnOverSettings$2;->this$0:Lcom/android/OriginalSettings/motion/TurnOverSettings;

    #calls: Lcom/android/OriginalSettings/motion/TurnOverSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/TurnOverSettings;->access$100(Lcom/android/OriginalSettings/motion/TurnOverSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_overturn"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/TurnOverSettings$2;->this$0:Lcom/android/OriginalSettings/motion/TurnOverSettings;

    #calls: Lcom/android/OriginalSettings/motion/TurnOverSettings;->showUseRingDialog()V
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/TurnOverSettings;->access$200(Lcom/android/OriginalSettings/motion/TurnOverSettings;)V

    .line 168
    return-void
.end method
