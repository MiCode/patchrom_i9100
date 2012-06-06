.class Lcom/android/OriginalSettings/motion/ShakeTutorial$5;
.super Ljava/lang/Object;
.source "ShakeTutorial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/motion/ShakeTutorial;->showRetryDialog()V
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
    .line 235
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$5;->this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$5;->this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->finish()V

    .line 239
    return-void
.end method
