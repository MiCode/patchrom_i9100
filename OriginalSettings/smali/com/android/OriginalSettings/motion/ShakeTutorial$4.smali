.class Lcom/android/OriginalSettings/motion/ShakeTutorial$4;
.super Ljava/lang/Object;
.source "ShakeTutorial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/motion/ShakeTutorial;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 128
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$4;->this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$4;->this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->showGuideDialog()V

    .line 131
    return-void
.end method
