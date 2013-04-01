.class Lcom/sec/android/app/fm/MainActivity$33;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 4332
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$33;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 4336
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$33;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->removeDialog(I)V

    .line 4337
    return-void
.end method
