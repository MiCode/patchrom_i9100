.class Lcom/android/settings/motion/MotionView$10;
.super Ljava/lang/Object;
.source "MotionView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/MotionView;->showUseRingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/MotionView;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/MotionView;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/settings/motion/MotionView$10;->this$0:Lcom/android/settings/motion/MotionView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 357
    const-string v0, "MotionView"

    const-string v1, "Use ring dismiss"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/android/settings/motion/MotionView$10;->this$0:Lcom/android/settings/motion/MotionView;

    #calls: Lcom/android/settings/motion/MotionView;->updateCheckedUI()V
    invoke-static {v0}, Lcom/android/settings/motion/MotionView;->access$400(Lcom/android/settings/motion/MotionView;)V

    .line 359
    return-void
.end method
