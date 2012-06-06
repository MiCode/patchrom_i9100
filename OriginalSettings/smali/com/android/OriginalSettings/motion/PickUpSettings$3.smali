.class Lcom/android/OriginalSettings/motion/PickUpSettings$3;
.super Ljava/lang/Object;
.source "PickUpSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/motion/PickUpSettings;->showMotionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/motion/PickUpSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/motion/PickUpSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/PickUpSettings$3;->this$0:Lcom/android/OriginalSettings/motion/PickUpSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 169
    const-string v0, "PickUpSettings"

    const-string v1, "use motion dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/PickUpSettings$3;->this$0:Lcom/android/OriginalSettings/motion/PickUpSettings;

    #calls: Lcom/android/OriginalSettings/motion/PickUpSettings;->updateCheckedUI()V
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/PickUpSettings;->access$300(Lcom/android/OriginalSettings/motion/PickUpSettings;)V

    .line 171
    return-void
.end method
