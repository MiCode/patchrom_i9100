.class Lcom/sec/android/app/fm/MainActivity$28;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/MainActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 4240
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$28;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 4244
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$28;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mMyApps:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->access$7302(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 4250
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$28;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-class v2, Lcom/sec/android/app/fm/RecordedFileListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4251
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$28;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/fm/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 4252
    return-void
.end method
