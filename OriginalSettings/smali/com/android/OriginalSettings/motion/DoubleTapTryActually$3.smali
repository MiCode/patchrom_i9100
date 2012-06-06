.class Lcom/android/OriginalSettings/motion/DoubleTapTryActually$3;
.super Ljava/lang/Object;
.source "DoubleTapTryActually.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 157
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually$3;->this$0:Lcom/android/OriginalSettings/motion/DoubleTapTryActually;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/DoubleTapTryActually$3;->this$0:Lcom/android/OriginalSettings/motion/DoubleTapTryActually;

    #calls: Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->finish_tutorial()V
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/DoubleTapTryActually;->access$100(Lcom/android/OriginalSettings/motion/DoubleTapTryActually;)V

    .line 160
    return-void
.end method
