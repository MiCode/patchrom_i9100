.class Lcom/android/settings/motion/MotionView$8;
.super Ljava/lang/Object;
.source "MotionView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 348
    iput-object p1, p0, Lcom/android/settings/motion/MotionView$8;->this$0:Lcom/android/settings/motion/MotionView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/settings/motion/MotionView$8;->this$0:Lcom/android/settings/motion/MotionView;

    const/4 v1, 0x0

    #calls: Lcom/android/settings/motion/MotionView;->startTryActually(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/motion/MotionView;->access$1300(Lcom/android/settings/motion/MotionView;Z)V

    .line 351
    return-void
.end method
