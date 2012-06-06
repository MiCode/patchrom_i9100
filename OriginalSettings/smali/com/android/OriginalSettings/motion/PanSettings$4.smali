.class Lcom/android/OriginalSettings/motion/PanSettings$4;
.super Ljava/lang/Object;
.source "PanSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/motion/PanSettings;->showGuideDialog()V
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
    .line 210
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/PanSettings$4;->this$0:Lcom/android/OriginalSettings/motion/PanSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/PanSettings$4;->this$0:Lcom/android/OriginalSettings/motion/PanSettings;

    #calls: Lcom/android/OriginalSettings/motion/PanSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/PanSettings;->access$400(Lcom/android/OriginalSettings/motion/PanSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_panning"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/PanSettings$4;->this$0:Lcom/android/OriginalSettings/motion/PanSettings;

    #calls: Lcom/android/OriginalSettings/motion/PanSettings;->startTryActually()V
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/PanSettings;->access$200(Lcom/android/OriginalSettings/motion/PanSettings;)V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/PanSettings$4;->this$0:Lcom/android/OriginalSettings/motion/PanSettings;

    #calls: Lcom/android/OriginalSettings/motion/PanSettings;->showMotionDialog()V
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/PanSettings;->access$500(Lcom/android/OriginalSettings/motion/PanSettings;)V

    goto :goto_0
.end method
