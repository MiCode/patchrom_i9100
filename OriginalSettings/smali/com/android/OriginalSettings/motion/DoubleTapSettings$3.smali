.class Lcom/android/OriginalSettings/motion/DoubleTapSettings$3;
.super Ljava/lang/Object;
.source "DoubleTapSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 168
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/DoubleTapSettings$3;->this$0:Lcom/android/OriginalSettings/motion/DoubleTapSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 170
    const-string v0, "DoubleTapSettings"

    const-string v1, "use motion dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/DoubleTapSettings$3;->this$0:Lcom/android/OriginalSettings/motion/DoubleTapSettings;

    #calls: Lcom/android/OriginalSettings/motion/DoubleTapSettings;->updateCheckedUI()V
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/DoubleTapSettings;->access$300(Lcom/android/OriginalSettings/motion/DoubleTapSettings;)V

    .line 172
    return-void
.end method
