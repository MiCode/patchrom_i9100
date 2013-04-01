.class Lcom/sec/android/app/fm/RenameFileActivity$3;
.super Ljava/lang/Object;
.source "RenameFileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RenameFileActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/RenameFileActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RenameFileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sec/android/app/fm/RenameFileActivity$3;->this$0:Lcom/sec/android/app/fm/RenameFileActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileActivity$3;->this$0:Lcom/sec/android/app/fm/RenameFileActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/RenameFileActivity;->removeDialog(I)V

    .line 166
    return-void
.end method
