.class Lcom/android/OriginalSettings/motion/DoubleTapTryActually$5;
.super Ljava/lang/Object;
.source "DoubleTapTryActually.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->createDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/motion/DoubleTapTryActually;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/motion/DoubleTapTryActually;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually$5;->this$0:Lcom/android/OriginalSettings/motion/DoubleTapTryActually;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually$5;->this$0:Lcom/android/OriginalSettings/motion/DoubleTapTryActually;

    iget-object v0, v0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mDoubletapAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually$5;->this$0:Lcom/android/OriginalSettings/motion/DoubleTapTryActually;

    iget-object v0, v0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mDoubletapAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 188
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually$5;->this$0:Lcom/android/OriginalSettings/motion/DoubleTapTryActually;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->mDoubletapAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually$5;->this$0:Lcom/android/OriginalSettings/motion/DoubleTapTryActually;

    #calls: Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->registerListener()V
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->access$200(Lcom/android/OriginalSettings/motion/DoubleTapTryActually;)V

    .line 191
    return-void
.end method
