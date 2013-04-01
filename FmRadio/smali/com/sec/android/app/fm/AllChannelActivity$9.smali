.class Lcom/sec/android/app/fm/AllChannelActivity$9;
.super Ljava/lang/Object;
.source "AllChannelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/AllChannelActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/AllChannelActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/AllChannelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/sec/android/app/fm/AllChannelActivity$9;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$9;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/AllChannelActivity;->removeDialog(I)V

    .line 582
    return-void
.end method
