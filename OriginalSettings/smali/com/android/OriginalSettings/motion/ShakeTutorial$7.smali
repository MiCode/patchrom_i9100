.class Lcom/android/OriginalSettings/motion/ShakeTutorial$7;
.super Ljava/lang/Object;
.source "ShakeTutorial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/motion/ShakeTutorial;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/motion/ShakeTutorial;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$7;->this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$7;->this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial;

    #calls: Lcom/android/OriginalSettings/motion/ShakeTutorial;->stopAnimation()V
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->access$900(Lcom/android/OriginalSettings/motion/ShakeTutorial;)V

    .line 266
    return-void
.end method
