.class Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity$1;
.super Ljava/lang/Object;
.source "CommonTryActuallyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity$1;->this$0:Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity$1;->this$0:Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity;->setResult(I)V

    .line 22
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity$1;->this$0:Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/motion/CommonTryActuallyActivity;->finish()V

    .line 23
    return-void
.end method
