.class Lcom/android/OriginalSettings/motion/TurnOverSettings$3;
.super Ljava/lang/Object;
.source "TurnOverSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 173
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/TurnOverSettings$3;->this$0:Lcom/android/OriginalSettings/motion/TurnOverSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 175
    const-string v0, "TurnOverSettings"

    const-string v1, "use motion dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/TurnOverSettings$3;->this$0:Lcom/android/OriginalSettings/motion/TurnOverSettings;

    #calls: Lcom/android/OriginalSettings/motion/TurnOverSettings;->updateCheckedUI()V
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/TurnOverSettings;->access$300(Lcom/android/OriginalSettings/motion/TurnOverSettings;)V

    .line 177
    return-void
.end method
