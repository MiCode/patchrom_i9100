.class Lcom/android/OriginalSettings/motion/PanSettings$2;
.super Ljava/lang/Object;
.source "PanSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/motion/PanSettings;->showMotionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/motion/PanSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/motion/PanSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/PanSettings$2;->this$0:Lcom/android/OriginalSettings/motion/PanSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 173
    const-string v0, "PanSettings"

    const-string v1, "showMotionDialog, positive click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/PanSettings$2;->this$0:Lcom/android/OriginalSettings/motion/PanSettings;

    #calls: Lcom/android/OriginalSettings/motion/PanSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/PanSettings;->access$100(Lcom/android/OriginalSettings/motion/PanSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_panning"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 175
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/PanSettings$2;->this$0:Lcom/android/OriginalSettings/motion/PanSettings;

    #calls: Lcom/android/OriginalSettings/motion/PanSettings;->startTryActually()V
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/PanSettings;->access$200(Lcom/android/OriginalSettings/motion/PanSettings;)V

    .line 176
    return-void
.end method
