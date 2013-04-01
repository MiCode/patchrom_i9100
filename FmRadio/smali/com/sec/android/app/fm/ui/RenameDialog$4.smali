.class Lcom/sec/android/app/fm/ui/RenameDialog$4;
.super Ljava/lang/Object;
.source "RenameDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/ui/RenameDialog;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/ui/RenameDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/ui/RenameDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/sec/android/app/fm/ui/RenameDialog$4;->this$0:Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameDialog$4;->this$0:Lcom/sec/android/app/fm/ui/RenameDialog;

    #getter for: Lcom/sec/android/app/fm/ui/RenameDialog;->listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/sec/android/app/fm/ui/RenameDialog;->access$300(Lcom/sec/android/app/fm/ui/RenameDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/ui/RenameDialog$4;->this$0:Lcom/sec/android/app/fm/ui/RenameDialog;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 198
    return-void
.end method
